# Pull requests and merging workflow

- All changes must be done via pull requests.
- Any reviewer can merge a pull request from another developer after review. Before merging, please ensure the following requirements are met:
  - Unless the changes are extremely small and straightforward, the PR must be tested and the results of the tests documented in a comment. You can fetch and checkout the PR from Github. As an example, for PR #304:<br>`git fetch upstream pull/304/head:pr-304`<br>`git checkout pr-304`<br>To add the main repo as upstream, run (only needs to be done first time):<br>`git remote add upstream https://github.com/commons-app/apps-android-commons.git`
  - Ensure that there is appropriate documentation (in the form of [Javadocs](https://github.com/commons-app/apps-android-commons/wiki/Code-style#javadocs)). All new classes and methods *must* have Javadocs.
  - Check that strings added do not have [unescaped HTML tags](https://github.com/commons-app/apps-android-commons/issues/1333#issuecomment-412430539), and that string literals are avoided.
  - Check that new libraries are not added without [appropriate discussion](https://github.com/commons-app/apps-android-commons/wiki/Code-style#new-libraries) in a separate issue.
- Do not merge your own pull requests. The only exception is for the project leader, who can push straightforward changelogs/versioning/etc or urgent bugfixes.
- Pull requests should be merged via "Squash and merge":
![image](https://user-images.githubusercontent.com/3611199/38073828-f6add6ca-336f-11e8-8f97-333406aaf029.png)

# Procedure to release a new version

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/master/CHANGELOG.md)
2. Increment `versionCode` and `versionName` in [AndroidManifest.xml](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/AndroidManifest.xml)
3. Commit, and push to Github
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