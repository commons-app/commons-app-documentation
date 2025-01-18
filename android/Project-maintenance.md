# Project maintenance

# Pull requests and merging workflow

See [Developer workflow](Developer-workflow.md)

# Procedure to release a new version

## Before release

Before proceeding to do the steps necessary for publishing a release, make sure you **build the `prodRelease` variant of the app** from the code you plan on using for the release. If that build works fine, you could proceed with the steps to release the version.

This is particularly necessary if the change touches any model classes as ProGuard would kick in and trim them if [our rules]([url](https://github.com/commons-app/apps-android-commons/blob/main/app/proguard-rules.txt#L35-L41)) are not appropriate.

## Generate release build after verification

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/main/CHANGELOG.md)
1. Increment `versionCode` and `versionName` in [app/build.gradle](https://github.com/commons-app/apps-android-commons/blob/main/app/build.gradle)
1. Commit, and push to Github
1. Tag the commit as `v` + the version number, for instance `v1.32` for version 1.32. This is needed [for F-Droid](https://gitlab.com/fdroid/fdroiddata/blob/main/metadata/fr.free.nrw.commons.txt) (`git tag v1.32`). Don't forget to push the tags (`git push --tags`).
1. Generate the signed app bundle using the keystore via the **Build > Generate Signed Bundle / APK** menu [[ref](https://developer.android.com/studio/publish/app-signing#sign-apk)]
    - Note: In this step, we need to generate an APK not an Android App bundle.
1. Create [a new release](https://github.com/commons-app/apps-android-commons/releases/new) in GitHub and publish the same with appropriate release notes. The CHANGELOG content helps here. Further, GitHub's auto-generated release notes is also helpful as it lists all PRs that were included in this release along with a section highlighting the "New contributors" to that release.

## Publish 'Open testing' release

1. Once the production APK is ready, go to the Google Play Console and switch to the **Testing > Open Testing** page.
1. Click 'Create new release' and upload the production APK.
1. Make sure to attach the ReTrace mapping file located at `app/build/outputs/mapping/prodRelease/mapping.txt` to the uploaded APK. This is possible through the overflow menu seen near the uploaded APK.
1. Fill in the changelog and verify rollout information.
1. After verification is done, rollout the release for testing.

## Promoting the test release to production

1. Go to the Google Play Console and switch to the **Testing > Open Testing** page.
1. Click on the "Promote release" button on the last testing release and choose "Production" from the menu.
1. Verify the release APK attached, release notes and if all looks fine, hit "Next".
1. Initiate a staged roll out of 20% and hit "Save".
1. Go to publishing overview, cross check stuff and send the changes for review.
   
# Branching and hotfix system for releases

- Every major release (e.g. 2.6) should be pulled from main and a new branch created (e.g. `2.6.x-release`)
- Hotfixes to the major release must be done in the `2.6.x-release` branch, not in main
- Hotfix releases (e.g. 2.6.1) will be pulled from the `2.6.x-release` branch. New changes/enhancements to main will not be included in the hotfix release
- Release branches will be merged into main periodically (so main is up to date with hotfixes made to release branches)
- Hotfixes can be released to production after being tested in beta for a few days. Major releases on the other hand should be tested in beta for a much longer time (e.g. 2 weeks?)

# Moderation of the mailing list

The [mailing list](https://groups.google.com/d/forum/commons-app-android) is moderated by volunteers. New users who post to the mailing list have their messages put in a moderation queue, and an email is sent to the moderators asking them to either allowlist or denylist the person. The moderator receives emails with this kind of title:

_commons-app-android - Google Groups: Message Pending [{IJCjjKCbgtX0ASoCb2kwB4ITL8vhkvwd0}]_

A moderator will then review the email, and denylist or allowlist the sender. All spam will be denylisted; Spam is often companies that want our app for advertising.

Notes for moderators:
- Only mark as spam messages that are clearly spam, or companies wanting to provide advertising. If in doubt please contact the project leader
- Be extremely generous with allowlisting
- Don't delete any message unless it is a duplicated message (sent twice) or totally empty (no attachment and no body)
- Any feedback about the app is obviously OK. Even hate mail (e.g. "This app sucks!") is OK.
- The moderation interface is similar to this:
![Google Group moderation web interface screenshot](https://i.imgur.com/jOvcCFl.png)
