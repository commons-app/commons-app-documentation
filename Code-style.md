## General coding style

Our coding style follows [Google Java Style Guide](http://checkstyle.sourceforge.net/reports/google-java-style-20170228.html). (See [#359](https://github.com/commons-app/apps-android-commons/issues/359))

## Javadocs

We require contributors to include [Javadocs](http://www.oracle.com/technetwork/articles/java/index-137868.html) for all new methods and classes submitted via PRs (after 1 May 2018). This is aimed at making it easier for new contributors to dive into our codebase, especially those who are new to Android development. A few things to note:

* This should not **replace** the need for code that is easily-readable in and of itself
* Please make sure that your Javadocs are reasonably descriptive, not just a copy of the method name
* Please do not use `@author` tags - we aim for collective code ownership, and if needed, GitHub allows us to see who wrote something without needing to add these tags

## New libraries

For reasons mentioned [here](https://github.com/commons-app/apps-android-commons/issues/1489#issuecomment-416009545), as of 30 Aug 2018, new libraries can only be added if an issue is created specifically for including the new library, and the person proposing it has good reasons for why the library would benefit the app as a whole, rather than just making it easier for them to do that one specific thing that they wanted to do in their PR. At least 3 other collaborators must agree before the inclusion can proceed. (We can change this number as activity fluctuates)

In short, please discuss things with us before you submit a PR with a new library, as otherwise your entire PR might be declined.

## Butterknife

Contributors have the option of using [butterknife](https://github.com/JakeWharton/butterknife) for their view bindings. 

### Adding Support
To add support for butterknife we have added the following dependency in the [app/build.gradle](https://github.com/commons-app/apps-android-commons/blob/master/app/build.gradle) file.

```
dependencies {
    compile "com.jakewharton:butterknife:$BUTTERKNIFE_VERSION"
    annotationProcessor "com.jakewharton:butterknife-compiler:$BUTTERKNIFE_VERSION"
}
```

### Usage

#### BindView
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

#### Events
Eliminate anonymous inner-classes for listeners by annotating methods with `@OnClick` and others.. Similarly events can be bound as follows as used in [SingleUploadFragment](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/java/fr/free/nrw/commons/upload/SingleUploadFragment.java). 

```
@OnClick(R.id.titleDescButton) void setTitleDescButton() {
    
    }
```

## Test-driven development

- Use wrapper classes for accessing any static methods wherever possible. For eg. see `FileUtilsWrapper`, `ImageUtilsWrapper` and `BitmapRegionDecoderWrapper`. If we use static functions directly, it won't be possible to mock them. 
- Avoid instance creation inside classes. Try to provide all instances required by a particular classs. For eg. see `UploadModel`. It uses dagger to get all the required instances. Creating an instance of a class inside a method makes it difficult to mock it. 


## External libraries
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