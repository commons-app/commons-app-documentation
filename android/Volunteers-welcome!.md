# Volunteers welcome!

We are always looking for volunteers, feel free to step in! It's very easy to get started - have a look at the roles that you fancy below. Thanks a lot!

# Developers

1. Set up your working environment by following the [quick start guide](Quick-start-guide-for-Developers.md).
2. Choose an [unassigned bug](https://github.com/commons-app/apps-android-commons/issues?q=is%3Aopen+is%3Aissue+no%3Aassignee+-label%3Adebated+label%3Abug+-label%3A%22low+priority%22) that sounds interesting to you, and ask to be assigned the issue. If the issue was assigned to someone who has been inactive for over 1 month, you can bring this to the attention of collaborators who may ping them for updates and possibly re-assign the issue to you.
    - If you are a new contributor, please only ask to be assigned to issues with a "bug" or "good first issue" label. Issues labeled "enhancement" will usually only be assigned to contributors with **more than 5 merged pull requests** to this repo. Exceptions may be granted if multiple collaborators agree, but it will take time for approval. ([rationale](https://github.com/commons-app/apps-android-commons/issues/2553))
4. Follow the [Contributing Guidelines](Contributing-Guidelines.md).

It is also recommended that you actually try the app and upload pictures with the app. Become familiar with the various workflows. Notice what kind of categories are suggested depending on where the picture is taken or what you type. Check what people consider [excellent pictures](https://commons.wikimedia.org/wiki/Commons:Featured_pictures) and get inspired by their rich descriptions and accurate categories.

# Testers

Use the beta version and report bugs to the [issue tracker](https://github.com/commons-app/apps-android-commons/issues/).

Choose the beta version if:

- You want to test only relatively stable versions of the app.
- You consider that uploading your pictures is more important than finding the app's bugs.
- You don't want to receive many app updates, because you don't have access to unlimited Internet.

## How to install the beta

The beta version might have bugs, your role is to find them all so that we can make a bug-free stable release :-)

| 1. Install the app from the [Google Play Store](https://play.google.com/store/apps/details?id=fr.free.nrw.commons). | 2. Scroll down until you see a box mentioning the beta program. |
| - | - |
| ![App page](https://i.imgur.com/8oQqtCs.png) | ![Join beta program](https://i.imgur.com/GyBqL6X.png) |

3. After some minutes or hours of enrolling, update your app to get the beta version. Please be patient.

<!--
Jo: Unfortunately the alpha version isn't working as it was previously, due to the deprecation of travis.org, which we rely on for automated alpha updates. :(
## How to install the alpha
An alpha gets released automatically each time we modify the app. This means you get all new features immediately, but it also means that you will encounter bugs very often! Please report any bug you find. This also means Google Play will update the app every few days or even several times per day, so be sure to set up Google Play to only download updates on Wi-Fi.

To install the alpha:

1) Under the Google account associated with your phone and Google Play, join this Google Group: https://groups.google.com/d/forum/commons-alpha
2) Still under the same Google account, go to https://play.google.com/apps/testing/fr.free.nrw.commons/join and join the test program. If you had already joined the beta then you are already in. Confusingly in some places this shows "beta" instead of "alpha", that's a Google Play bug.
3) Another confusing thing is that the app may still show the beta version number in "*About*". However, the full version number is visible in Android's `Settings`>`Apps`>`Commons`, for instance `2.13.1.832`. To know exactly what commit your app is at, take the commit number from ther version string shown in About (example: for `2.13.1.832~e39ace5` it is `e39ace5`) and search for that commit in the repository ([example](https://github.com/commons-app/apps-android-commons/search?q=e39ace5&type=commits))
-->

## How to install the test flavor
The test flavor allows you to use a server different from the Commons server. Only needed if you plan to upload many test images with no encyclopedic value. You must compile this version by yourself, from the source code.

## Stress-testing

To detect more crashes, we encourage testers to sometimes enable "Don't keep activities" (In [Developer options](https://developer.android.com/studio/debug/dev-options)), for instance one day per week.

# Translators

See [Translating the App](Translating-the-app.md).

# Patrollers

See https://commons.wikimedia.org/wiki/Commons:Mobile_app#We_need_your_help:_please_monitor_uploads

# Documentation writers

Be it this wiki, the [Wikimedia page](https://commons.wikimedia.org/wiki/Commons:Mobile_app#We_need_your_help:_please_monitor_uploads), the [official webpage](http://commons-app.github.io) or the source code, documentation always needs to be improved and updated
