## Information about build variants of the Commons app.

The Commons app has four build variants made using the combination of two build types and two flavours as shown below.

Build types:

* `release`
* `debug`

Product flavours:

* `prod`
* `beta`

These build types and flavours form the four build types as shown below:

 **-** | debug | release
--|---------|------
beta|betaDebug|betaRelease
prod|prodDebug|prodRelease

The four build variants:

`betaDebug`: This version connects to the [beta server](https://commons.wikimedia.beta.wmflabs.org/wiki/Main_Page) and can be used for debugging the app during development.

`prodDebug`: This version connects to the [production server](https://commons.wikimedia.org/wiki/Main_Page) and can also be used for debugging the app during development.

`betaRelease`: This is the release version of the app which connects to the beta server. This cannot be used for debugging the app. You would have to [sign this version of the app](https://developer.android.com/studio/publish/app-signing) using your signing keys.

`prodRelease`: This is the release version of the app which connects to the production server. This cannot be used for debugging the app. You would have to sign this version of the app using your signing keys.


### Links to official android documentation
Build types - https://developer.android.com/studio/build/build-variants#build-types

Product flavours - https://developer.android.com/studio/build/build-variants#product-flavors
