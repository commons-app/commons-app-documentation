
# Quick Start Guide for Developers

This guide provides step-by-step instructions to set up the Commons App development environment using Android Studio. It includes solutions to common setup issues to ensure a smooth onboarding experience.

## Prerequisites

Before starting, ensure the following tools are installed and configured:

- **Git**: Install Git and add it to your system's PATH environment variable. Verify with `git --version` in your terminal. [Download Git](https://git-scm.com/downloads).
- **Android Studio**: Download and install the latest version of Android Studio. [Download Android Studio](https://developer.android.com/studio/).
- **Java Development Kit (JDK)**: Use JDK 11 for compatibility with the Commons App. Verify with `java -version`. [Download JDK 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html).
- **Android SDK**: Ensure the required SDK components are installed (detailed in the setup steps below).

After installing Git or updating the PATH, restart your machine to apply changes.

## Setting Up the Development Environment

### 1. Fork the Git Repository

- Navigate to the [Commons App repository](https://github.com/commons-app/apps-android-commons/) on GitHub.
- Click the "Fork" button to create a copy of the repository under your GitHub account.

### 2. Clone Your Fork

- On your fork’s GitHub page, click the "Code" button and copy the Git URL (e.g., `git@github.com:yourname/apps-android-commons.git`).
- Open a terminal and clone the repository to your local machine:

```bash
git clone git@github.com:yourname/apps-android-commons.git
cd apps-android-commons
```

### 3. Open the Project in Android Studio

- Launch Android Studio.
- Select File > New > Project from Version Control... > Git (or from the Quick Start menu, choose Get from Version Control > Git).
- Paste the Git URL copied in step 2.
- Specify a local directory for the project and click OK.

### 4. Configure Android SDK Components

To avoid common build errors, install the required SDK components:

- Open Android Studio and navigate to **File > Settings** (or **Android Studio > Preferences** on macOS) > **Appearance & Behavior > System Settings > Android SDK**.
- Select the **SDK Platforms** tab:
  - Check **Show Package Details**.
  - Under **Android 9.0 (Pie)**, select **Android SDK Platform 28**.
- Select the **SDK Tools** tab:
  - Check **Show Package Details**.
  - Under **Android SDK Build-Tools**, select version **29.0.2**.
  - Under **NDK (Side by side)**, select version **21.0.6113669**.
- Click **Apply** to install the selected components, then click **Finish**.

### 5. Verify JDK Configuration

Ensure Android Studio is using JDK 11:

- Go to **File > Project Structure > SDK Location**.
- Under **JDK**, select the JDK 11 installation or click **Download JDK** to install it.

If you encounter issues related to Kotlin compilation (e.g., `kaptBetaDebugKotlin` errors), verify that the **Gradle JDK** is set to version 11:

- Go to **File > Settings > Build, Execution, Deployment > Build Tools > Gradle**.
- Set **Gradle JVM** to **JDK 11**.

## Start Contributing

- Read the **Developer Workflow** and **Code Style Guide** to understand contribution guidelines and coding standards.
- Begin making changes to the codebase or documentation as needed.

## Building the Source Code

The Commons App supports two flavors (beta and prod) and two build types (debug and release). The **beta** flavor is recommended for testing, as it allows test modifications and uploads without risking a ban. However, **do not upload copyrighted
images**, even in the beta environment.

### Building with Android Studio

- Open the **Build Variants** panel in Android Studio (usually at the bottom left).
- Select the desired variant: `betaDebug` or `prodDebug`.
- Click **Run** to build and install the app on a connected device or emulator.

### Building via Terminal

You can build and install the app using Gradle commands:

For the beta debug variant:

```bash
./gradlew :app:installBetaDebug
```

For the prod debug variant:

```bash
./gradlew :app:installProdDebug
```

Alternatively, configure these commands in Android Studio:

- Go to **Run > Edit Configurations**.
- Add a new **Gradle** configuration with the above commands.

### Notes on Release Builds

- To build the release variant for beta or prod, you need signing keys. See Android’s App Signing Guide for details.
- Use release builds only when debugging issues specific to release configurations (e.g., ProGuard-related issues).

## Troubleshooting Common Issues

### Issue: Cannot run program "git"

**Fix**: Ensure Git is installed and added to the PATH environment variable. Verify with `git --version`. Restart your machine after updating PATH.

### Issue: No mapping for: android/support/FILE_PROVIDER_PATHS

**Fix**: Install Android SDK Build-Tools 29.0.2, Android SDK Platform 28, and NDK 21.0.6113669 as described in step 4 of the setup process.

### Issue: Failed to find Build Tools revision 29.0.2

**Fix**: Install Android SDK Build-Tools 29.0.2 via **Settings > Android SDK > SDK Tools**.

### Issue: Failed to find Platform SDK with path: platforms;android-28

**Fix**: Install Android SDK Platform 28 via **Settings > Android SDK > SDK Platforms**.

### Issue: Missing NDK version 21.0.6113669

**Fix**: Install NDK 21.0.6113669 via **Settings > Android SDK > SDK Tools**.

### Issue: Execution failed for task ':app:kaptBetaDebugKotlin'

**Fix**:

- Ensure JDK 11 is used in Project Structure and Gradle JVM settings.
- Sync the project with Gradle: **File > Sync Project with Gradle Files**.
- Clean and rebuild the project:

```bash
./gradlew clean
./gradlew build
```

If the issue persists, check for outdated dependencies in `build.gradle`. Update Kotlin and other plugins to compatible versions (consult the repository’s `build.gradle` for specific versions).

Did you run into other problems? Please add any issue which is not captured here along with its fix. If you don't have edit permissions, submit a [new issue](https://github.com/commons-app/apps-android-commons/issues/new).

[1]: https://developer.android.com/studio/