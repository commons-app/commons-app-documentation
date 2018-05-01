# Pull requests and merging workflow

- All changes must be done via pull requests.
- Any reviewers can merge a pull request from another developer after review. 
- Except for small/straightforward changes, it is strongly recommended that the reviewer test the code before merging. This can be done via `git fetch upstream pull/304/head:pr-304` then `git checkout pr-304`.
- The reviewer should also request appropriate documentation of the pull request via [Javadocs](https://github.com/commons-app/apps-android-commons/wiki/Code-style#javadocs).
- Nobody can merge their own pull requests. The only exception is for the project leader, who can push straightforward changelogs/versioning/etc or urgent bugfixes.
- We strongly prefer that pull requests be merged via "Squash and merge".

![image](https://user-images.githubusercontent.com/3611199/38073828-f6add6ca-336f-11e8-8f97-333406aaf029.png)

# Procedure to release a new version

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/master/CHANGELOG.md)
2. Increment `versionCode` and `versionName` in [AndroidManifest.xml](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/AndroidManifest.xml)
3. Commit, push
4. Tag the commit as `v` + the version number, for instance `v1.32` for version 1.32. This is needed [for F-Droid](https://gitlab.com/fdroid/fdroiddata/blob/master/metadata/fr.free.nrw.commons.txt). Don't forget to push the tags (`git push commons-app --tags`).
5. Click 'Draft a new release' and fill in details
6. Publish to Google Play
7. Update Google Play's changelog

# Branching and hotfix system for releases

- Every major release (e.g. 2.6) should be pulled from master and a new branch created (e.g. `2.6.x-release`)
- Hotfixes to the major release must be done in the `2.6.x-release` branch, not in master
- Hotfix releases (e.g. 2.6.1) will be pulled from the `2.6.x-release` branch. New changes/enhancements to master will not be included in the hotfix release
- Release branches will be merged into master periodically (so master is up to date with hotfixes made to release branches)
- Hotfixes can be released to production after being tested in beta for a few days. Major releases on the other hand should be tested in beta for a much longer time (e.g. 2 weeks?)

# Moderation of the mailing list

The [mailing list](https://groups.google.com/d/forum/commons-app-android) is moderated by a volunteer. New users who post to the mailing list have their messages put in a moderation queue, and an email is sent to the moderators asking them to either whitelist or blacklist the person. The moderator receives emails with this kind of title:

_commons-app-android - Google Groups: Message Pending [{IJCjjKCbgtX0ASoCb2kwB4ITL8vhkvwd0}]_

When a such a moderation email comes, the moderator has a look at the message written by the new user, then blacklist if it is spam, whitelist if it is not. Spam is usually companies that want our app to use their advertisement products.

Notes for the moderator(s):
- Only mark as spam messages that are clearly spam, or companies want us to use their advertisement products. If in doubt please contact the project leader, by discussing about specific messages you will learn what we consider spam or not.
- Don't delete any message unless it is a duplicated message (sent twice) or totally empty (no attachment and no body).
- Be extremely generous with whitelisting.
- Any feedback about the app is obviously OK. Even hate mail (ex: "This app sucks!") is OK.
- The moderation interface si similar to this:

![Google Group moderation web interface screenshot](https://i.imgur.com/jOvcCFl.png)