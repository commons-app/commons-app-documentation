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

5. Disable Instant Run
    - In the menu bar, click `File` > `Settings`
    - In `Build, Execution, Deployment` > `Instant Run` uncheck the `Enable Instant Run` checkbox
    - Click `OK` to save and exit from the settings window

6. Start contributing! Be sure to read through the [[developer workflow]] and the [[code style guide|code style]].

## Common issues

- **Issue:** Most compile errors<br>
    **Fix:** Ensure you have disabled Instant Run in settings. See step 5 above.

- **Issue:** `Cannot run program "git" (in directory "<project path>"): CreateProcess error=2, The system cannot find the file specified`<br>
    **Fix:** Make sure git is installed and added in the PATH env variable. Don't forget to restart the machine post PATH env variable update.

<!--
2018-12-20: I don't think these errors can happen any more? ~domdomegg

- **Issue:** `Unable to load class 'com.android.builder.Version'`<br>
    **Fix:** Update the dexcount-gradle-plugin version to 0.8.2 in project's build.gradle	

- **Issue:** `groovy-all is loaded in version 2.4.4 and you are trying to load version 2.4.12`<br>
    **Fix:** Add `classpath 'org.codehaus.groovy:groovy-all:2.4.12'` to project's `build.gradle`
-->

Did you run into other problems? Please add any issue which is not captured here along with its fix. If you don't have edit permissions, submit a [new issue](https://github.com/commons-app/apps-android-commons/issues/new).

[1]: https://developer.android.com/studio/