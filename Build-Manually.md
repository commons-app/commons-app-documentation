Tip: it's much easier to build with [[Android Studio|Develop with Android Studio or IntelliJ]] instead.

### Requirements ###

1. Java SDK 8 ([OpenJDK 8](http://openjdk.java.net/install/) or [Oracle Java SE 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)), later versions do not work
2. [Android SDK][3] (Level 23 or higher)
3. [Gradle][4]

### Build Instructions ###

1. Set the environment variable `ANDROID_HOME` to be the path to your Android SDK
2. Set the environment variable `JAVA_HOME` to the path to your Java SDK
3. Run `gradlew.bat assembleDebug` (Windows) or `./gradlew assembleDebug` (Mac / Linux) to build an unsigned APK
4. Alternatively, you can also connect your Android device via USB and install the app on it directly by running `gradlew.bat installProdDebug` (Windows) or `./gradlew installProdDebug` (Mac / Linux)

There are more thorough instructions on the [Android Developers website][5]

[3]: https://developer.android.com/sdk/index.html
[4]: http://gradle.org/gradle-download/
[5]: https://developer.android.com/studio/build/building-cmdline