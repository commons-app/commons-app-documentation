1. [Download and Install Android Studio][1]

2. Fork the Git repository.
    - Go to [the main Github repo](https://github.com/commons-app/apps-android-commons/) and click "Fork".

3. Clone your fork to your local machine.
    - Click "Clone" on your fork's Github page, and copy the Git URL. It should look like:<br>`git@github.com:yourname/apps-android-commons.git`

4. Open the project in Android Studio.
    - Open Android Studio
    - In the menu bar, click `File` > `New` > `Project from Version Control...` > `Git`<br>
    OR<br>
    (if Quick Start menu open): `Check out project from Version Control` > `Git`
    - Enter the Git URL you obtained in step 3.
    - Specify a local directory you would like to save the project in and select `OK`.

5. Start contributing! Be sure to read through the [developer workflow](Developer-workflow.md) and the [code style guide](Code-style.md).

## Building the source code

You can build the `beta` and `prod` flavor of the app for `debug` build type using the Android Studio. Read up more about flavor and build type [here](https://developer.android.com/studio/build/build-variants).

You can either directly invoke the following commands using your terminal or you can [edit configurations](https://developer.android.com/studio/run/rundebugconfig) in android studio and add these configs. 
To build the `beta` `debug` variant use: 

```
:app:installBetaDebug
``` 

To build the `prod` `debug` variant use: 

```
:app:installProdDebug
``` 

Note: 

- You can also build and test the `release` variant for both `beta` and `prod` but you would need to use your own signing keys for it. Read up more about signing keys [here](https://developer.android.com/studio/publish/app-signing). Building and testing `release` variant might be required when you are debugging an issue that is happening just on `release` builds and not on `debug` builds. Most likely it should be a proguard issue. 

## Frequent issues

- **Issue:** `Cannot run program "git" (in directory "<project path>"): CreateProcess error=2, The system cannot find the file specified`<br>
    **Fix:** Make sure git is installed and added in the PATH environment variable. Don't forget to restart the machine after updating your PATH environment variable.

Did you run into other problems? Please add any issue which is not captured here along with its fix. If you don't have edit permissions, submit a [new issue](https://github.com/commons-app/apps-android-commons/issues/new).

[1]: https://developer.android.com/studio/