1. [Download Android Studio][1] (recommended) or [IntelliJ][2].

2. Depending on what you want to do:
  - If you want to contribute to the source code, please fork the Git repository;
    - Go to [the main Github repo](https://github.com/commons-app/apps-android-commons/) and click "Fork". 
    - Once your fork has been created, click "Clone" on the page that appears, and copy the Git URL. It'll look something like:<br>`git@github.com:yourname/apps-android-commons.git`
  - If you just want to compile the latest source code, but never intend to modify it, then use this Git URL:<br>`git@github.com:commons-app/apps-android-commons.git`.

3. Open Android Studio/IntelliJ. Open the project with:<br>
    `File` > `New` > `Project from Version Control...` > `Git`<br>
    or<br>
    (From Quick Start menu): `Check out project from Version Control` > `Git`
4. Enter the Git URL you obtained at step 2. Specify a (new) local directory you would like to clone into and select `OK`.

5. Press the Run button.

## Common issues

- **Issue:** `Cannot run program "git" (in directory "<project path>"): CreateProcess error=2, The system cannot find the file specified`<br>
    **Fix:** Make sure git is installed and added in the PATH env variable. Don't forget to restart the machine post PATH env variable update.

- **Issue:** `Unable to load class 'com.android.builder.Version'`<br>
    **Fix:** Update the dexcount-gradle-plugin version to 0.8.2 in project's build.gradle	

- **Issue:** `groovy-all is loaded in version 2.4.4 and you are trying to load version 2.4.12`<br>
    **Fix:** Add `classpath 'org.codehaus.groovy:groovy-all:2.4.12'` to project's `build.gradle`

Did you run into other problems? Please add any issue which is not captured here along with its fix. If you don't have edit permissions, submit a [new issue](https://github.com/commons-app/apps-android-commons/issues/new).

[1]: https://developer.android.com/studio/
[2]: http://www.jetbrains.com/idea/download/index.html