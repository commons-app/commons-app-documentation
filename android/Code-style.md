# Code style

# Commons Android App Style Guide

## General coding style

Our coding style follows the [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html).

Our code style is part of the project and should be automatically used.  
 The code style is located at `.idea/codeStyles/Project.xml`  
 it is important that you commit no changes to this file unless you are working on a ticket
 to update our code style.

 It may also be beneficial to create a [macro](https://www.jetbrains.com/help/idea/using-macros-in-the-editor.html)
 to help you keep files formatted, indented and saved.  
  These actions can be found in the `Code` and `File` menus respectively.  
  This macro can be bound to `ctrl+s` for convenience

## Javadocs

You must include [Javadocs](http://www.oracle.com/technetwork/articles/java/index-137868.html) for all new methods and classes. This is aimed at making it easier for new contributors to dive into our codebase, especially those who are new to Android development. A few things to note:

* This should not **replace** the need for code that is easily-readable in and of itself
* Please make sure that your Javadocs are reasonably descriptive, not just a copy of the method name
* Please do not use `@author` tags - we aim for collective code ownership, and if needed, GitHub allows us to see who wrote something without needing to add these tags

## New libraries

For reasons mentioned in [#1489](https://github.com/commons-app/apps-android-commons/issues/1489#issuecomment-416009545), new libraries can only be added if: 
- an issue is created specifically for including the new library
- the person proposing it has good reasons for why the library would benefit the app as a whole
- at least 3 other collaborators agree to the addition (number may change as activity fluctuates)
- they are compatible Apache 2-licensed

In short, please discuss things with us before you submit a PR with a new library, as otherwise your entire PR might be declined.

## Architecture

Please follow the [MVP architecture](https://github.com/commons-app/apps-android-commons/issues/888) if you are submitting a large enhancement (definitions of "large" vary according to context - if you are not sure whether this is needed for your code, ask beforehand)

## Unit tests

Please write unit tests to cover your own code if you are submitting an enhancement (i.e. the issue that you are working on has an "enhancement" label)

## Licensing
We can only embed libraries that allow being embedded with Apache 2-licensed software.

In particular, we can NOT embed:

- Google Play Services, as it is not even open source
- GNU-GPL source code, [for this reason](https://www.apache.org/licenses/GPL-compatibility.html)

We CAN embed:
- Apache 2-licensed source code
- MIT-licensed source code, because the MIT license is compatible with the Apache 2 license.
- Public domain source code

Calling HTTP services powered by non open source software (example: Google Search, Crashlytics, HockeyApp) is not illegal per se, but:
- It should be avoided if possible, because it would attract as a negative badge on F-Droid saying "_promotes non-free network services_" (_free_ being used with the meaning of [free software](https://www.gnu.org/philosophy/free-sw.en.html)).
- Following [our privacy policy](https://wikimediafoundation.org/wiki/Privacy_policy), we must not reveal much about the user. Arguably revealing the user's IP address might be considered as already too much, which effectively would prevent any such third-party service from being used.
- The client-side source code should be compatible license-wise.

## Strings

Strings added must not have [unescaped HTML tags](https://github.com/commons-app/apps-android-commons/issues/1333#issuecomment-412430539)

String literals should be avoided

## View Bindings

We have decided to move away from Butterknife and gradually replace its usage with [Kotlin Android Extensions ViewBinding](https://kotlinlang.org/docs/tutorials/android-plugin.html#view-binding). 

Note: 
- Whenever a new Android Component written in Kotlin in added, you should use Kotlin Android Extensions ViewBindings. 
- Whenever an existing Android component which is written in Java is converted to Kotlin, we should ideally replace Butterknife with Kotlin Android Extensions ViewBinding.
- If you are simply changing or adding anything in an existing Android component which is written in Java then you can continue using Butterknife. 

### Butterknife

Contributors have the option of using [butterknife](https://github.com/JakeWharton/butterknife) for their view bindings. We recommend doing so if you can.

#### Usage

##### BindView
Eliminate `findViewById` calls by using `@BindView` on fields. We have refactored the [AboutActivity](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/java/fr/free/nrw/commons/AboutActivity.java) to use `@BindView` instead of `findViewById`. 

```
public class AboutActivity extends BaseActivity {
    @BindView(R.id.about_version) TextView versionText;
    @BindView(R.id.about_license) TextView licenseText;
    @BindView(R.id.about_improve) TextView improveText;
    @BindView(R.id.about_privacy_policy) TextView privacyPolicyText;
    @BindView(R.id.about_uploads_to) TextView uploadsToText;
    @BindView(R.id.about_credits) TextView creditsText;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);

        ButterKnife.bind(this);

    }
}
```

##### Events
Eliminate anonymous inner-classes for listeners by annotating methods with `@OnClick` and others.. Similarly events can be bound as follows as used in [SingleUploadFragment](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/java/fr/free/nrw/commons/upload/SingleUploadFragment.java). 

```
@OnClick(R.id.titleDescButton) void setTitleDescButton() {
    
    }
```

## Shared Preferences

We have 2 wrapper classes to provide instances of shared prefs. 
- `BasicKvStore`
- `JsonKvStore`

These classes handle all the logic for talking with `SharedPreferences`. Anyone trying to use shared prefs can do it using simple interfaces: 

### BasicKvStore

```
BasicKvStore store = new BasicKvStore(context, "storeName");

Put string value:
store.putString("test", "Hello world");

Get String value:
String value = store.getString("test");
```

### JsonKvStore

Similiarly JsonKvStore can be used for complex objects: 

```
JsonKvStore store = new JsonKvStore(context, "storeName");

Put Json value: 

Place place = new Place(); //assume you have an instance of place object
store.putJson("test", place)

Get Json value: 

Place place = store.getJson("test", Place.java)
```

If you need to save a List/Map/Set of values then you can simply save and retrieve it in JSON format. 

The eg. below shows how to save and retrieve a `Set<String>`

```
Type setType = new TypeToken<Set<String>>() {}.getType();
directKvStore.putJson("keyName", new HashSet<String>());
directKvStore.getJson("keyName", setType);
```


## Test-driven development

- Use wrapper classes for accessing any static methods wherever possible. For eg. see `FileUtilsWrapper`, `ImageUtilsWrapper` and `BitmapRegionDecoderWrapper`. If we use static functions directly, it won't be possible to mock them. 
- Avoid instance creation inside classes. Try to provide all instances required by a particular class. For eg. see `UploadModel`. It uses dagger to get all the required instances. Creating an instance of a class inside a method makes it difficult to mock it. 
