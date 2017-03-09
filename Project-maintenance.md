# Pull requests and merging workflow

- All changes must be done via pull requests.
- Any reviewers can merge a pull request from another developer after review. 
- Except for small/straightforward changes, it is strongly recommended that the reviewer test the code before merging. This can be done via `git fetch upstream pull/304/head:pr-304` then `git checkout pr-304`.
- Nobody can merge their own pull requests. Exception: straightforward changelogs/versioning/etc or bugfixes that need to be pushed urgently by the project leader.



# Procedure to release a new version

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/master/CHANGELOG.md)
2. Increment `versionCode` and `versionName` in [AndroidManifest.xml](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/AndroidManifest.xml)
3. Commit, push
4. Tag the commit as `v` + the version number, for instance `v1.32` for version 1.32. This is needed [for F-Droid](https://gitlab.com/fdroid/fdroiddata/blob/master/metadata/fr.free.nrw.commons.txt). Don't forget to push the tags (`git push commons-app --tags`).
5. Click 'Draft a new release' and fill in details
6. Publish to Google Play
7. Update Google Play's changelog
