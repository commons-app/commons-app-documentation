## Overview

At its core, dependency injection is just the principle of `"tell, dont ask"` put into practice; for instance, if a class needs to use an instance of `MediaWikiApi`, it should be handed an instance of the classs rather than reaching out to get it.  This has the effect of decoupling code, making it easier to test and reuse.

We use Dagger 2 as our dependency injection engine.  This page alone wont be enough to answer all of your questions, so take a look at a couple of great resources:

* "Dependency Injection with Dagger 2" - https://github.com/codepath/android_guides/wiki/Dependency-Injection-with-Dagger-2
* the Dagger user guide - https://google.github.io/dagger/users-guide.html

## Dagger configuration 

Dagger is a compile-time annotation processor that writes the glue that holds an application together.  Configuration comes in the form of `Components` that manage a number of `Modules` so that they can supply the dependencies classes need either through *provider* methods in the modules, or class constructors marked with `@Inject` annotations.

## Dagger configuration in the Commons app

One top level `CommonsApplicationComponent` pulls together configuration for injection across the app.

- if you need to add a new Activity and want Dagger to inject dependencies, look at `ActivityBuilderModule` and copy how injection is configured.  So long as your activity is descended from `BaseActivity`, the base class will take care of the rest.
- if you are adding a new Fragment, look at `FragmentBuilderModule` to see how to get Dagger to inject the dependencies you need
- if you are adding a new ContentProvider, look at `ContentProviderBuilderModule` to see how to get Dagger to inject the dependencies you need
- if you are adding a new Service, look at `ServiceBuilderModule` to see how to get Dagger to inject the dependencies you need

The `CommonsApplicationModule` contains provider methods that construct a number of the objects that the app needs.

## How Dagger creates instances of classes

Imagine we have an `InboxActivity` - a class that will be created by Android - whose data is managed in an `InboxViewModel`.

```java
public class InboxActivity extends BaseActivity {
    private InboxViewModel viewModel;
}
```

The `BaseActivity` class invokes Dagger to get dependencies injected in its `onCreate()` method.  We'll need to add this new class to the module so that the class can participate in dependency injection.

```java
public abstract class ActivityBuilderModule {

    @ContributesAndroidInjector
    abstract InboxActivity bindInboxActivity();

    ...
}
```

What about the view model?  It needs to pull data from a local database and from a server, so I have a class with two dependencies

```java
public class InboxViewModel {
    private final MessageDatabase database;
    private final MessageApi api;

    @Inject
    public InboxViewModel(MessageDatabase database, MessageApi api) {
        this.database = database;
        this.api = api;
    }
}
```
Dagger reads the `@Inject` annotation and will look for how to construct the database and api classes.  If they are similarly annotated, then the object graph gets built and the model will be injected.  Dagger will provide compile-time errors if it is unable to find a constructor or a provider method for classes it is managing.

In a project wired together by Dagger, there's no need to manage your own *singleton* instances.  If you annotate a class then Dagger will do the work for you.  For instance, we might have a singleton inbox message database

```java
@Singleton
public class MessageDatabase {
    @Inject
    public MessageDatabase() {
    }
}
```

## "Provider" methods

Sometimes we might not be in a position to annotate a constructor (it might be a class from a library) or we might want to take manual control of object creation.  This is where we might create a method in a `Module` to *provide* the dependency.

Dagger will resolve the method arguments on these provider methods in a module and build the objects accordingly - either by calling another provider method or by looking for a constructor on a class that has the `@Inject` annotation.  Dagger takes care of managing singletons, just annotate with the `@Singleton` annotation.  For instance,

```java
@Provides
@Singleton
public SessionManager providesSessionManager(MediaWikiApi mediaWikiApi) {
    return new SessionManager(application, mediaWikiApi);
}
```

If your code injects an interface (in this case, `MediaWikiApi`) then Dagger needs to know which concrete class to use.  This comes by way of a provider method:

```java
@Provides
@Singleton
public MediaWikiApi provideMediaWikiApi() {
    return new ApacheHttpClientMediaWikiApi(BuildConfig.WIKIMEDIA_API_HOST);
}
```

All of this isnt magic though.  The object graph has to start with Dagger - if your new `CoffeeMaker` class has members marked with `@Inject` but you call `new CoffeeMaker()` then the members will remain null as Dagger wasnt involved in the process.  If (on the other hand) Dagger created the class (either it was being injected into another class, or was being requested directly from the `Component`) then the `@Inject` members will be resolved.

If in doubt, _always_ favor **constructor injection** over **member injection**.  That is, 
<table><thead>
<tr><th>Constructor Injection</th><th>Member Injection</th></tr>
</thead><tbody>
<tr>
<td><pre lang="java">
public class CoffeeMaker {
    private final Flask;
    private final Heater;
    @Inject
    public CoffeeMaker(Flask flask, Heater heater) {
        this.flask = flask;
        this.heater = heater;
    }
}</pre></td><td><pre lang="java">
public class CoffeeMaker {
    @Inject private Flask;
    @Inject private final Heater;
    public CoffeeMaker() {
    }
}</pre></td>
</tr></tbody>
</table>

Constructor injection makes it clear what dependencies a class needs and there is far less chance that a `NullPointerException` will be generated because someone created an instance of `CoffeeMaker` and forgot to initialize the members.

The time when you'll need to use member injection is in classes created by Android - Activities, Fragments, etc - but if you follow the framework outlined on this page your dependencies will arrive when you need them.