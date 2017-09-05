## General coding style

Our coding style follows [Google Java Style Guide](http://checkstyle.sourceforge.net/reports/google-java-style-20170228.html). (See [#359](https://github.com/commons-app/apps-android-commons/issues/359))

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