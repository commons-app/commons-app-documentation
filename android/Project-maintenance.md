# Project maintenance

# Pull requests and merging workflow

See [Developer workflow](Developer-workflow.md)

# Procedure to release a new version

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/master/CHANGELOG.md)
1. Increment `versionCode` and `versionName` in [app/build.gradle](https://github.com/commons-app/apps-android-commons/blob/master/app/build.gradle)
1. Commit, and push to Github
1. Tag the commit as `v` + the version number, for instance `v1.32` for version 1.32. This is needed [for F-Droid](https://gitlab.com/fdroid/fdroiddata/blob/master/metadata/fr.free.nrw.commons.txt). Don't forget to push the tags (`git push commons-app --tags`).
1. Generate the signed app bundle using the keystore via the **Build > Generate Signed Bundle / APK** menu [[ref](https://developer.android.com/studio/publish/app-signing#sign-apk)]
1. Click 'Draft a new release' and fill in details
1. Publish to Google Play
1. Update Google Play's changelog

# Branching and hotfix system for releases

- Every major release (e.g. 2.6) should be pulled from master and a new branch created (e.g. `2.6.x-release`)
- Hotfixes to the major release must be done in the `2.6.x-release` branch, not in master
- Hotfix releases (e.g. 2.6.1) will be pulled from the `2.6.x-release` branch. New changes/enhancements to master will not be included in the hotfix release
- Release branches will be merged into master periodically (so master is up to date with hotfixes made to release branches)
- Hotfixes can be released to production after being tested in beta for a few days. Major releases on the other hand should be tested in beta for a much longer time (e.g. 2 weeks?)

# Moderation of the mailing list

The [mailing list](https://groups.google.com/d/forum/commons-app-android) is moderated by volunteers. New users who post to the mailing list have their messages put in a moderation queue, and an email is sent to the moderators asking them to either whitelist or blacklist the person. The moderator receives emails with this kind of title:

_commons-app-android - Google Groups: Message Pending [{IJCjjKCbgtX0ASoCb2kwB4ITL8vhkvwd0}]_

A moderator will then review the email, and blacklist or whitelist the sender. All spam will be blacklisted; Spam is often companies that want our app for advertising.

Notes for moderators:
- Only mark as spam messages that are clearly spam, or companies wanting to provide advertising. If in doubt please contact the project leader
- Be extremely generous with whitelisting
- Don't delete any message unless it is a duplicated message (sent twice) or totally empty (no attachment and no body)
- Any feedback about the app is obviously OK. Even hate mail (e.g. "This app sucks!") is OK.
- The moderation interface is similar to this:
![Google Group moderation web interface screenshot](https://i.imgur.com/jOvcCFl.png)
