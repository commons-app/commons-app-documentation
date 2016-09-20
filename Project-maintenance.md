# Procedure to release a new version

1. Add the new features to [CHANGELOG.md](https://github.com/commons-app/apps-android-commons/blob/master/CHANGELOG.md)
2. Increment `versionCode` and `versionName` in [AndroidManifest.xml](https://github.com/commons-app/apps-android-commons/blob/master/app/src/main/AndroidManifest.xml)
3. Commit, push
4. Tag the commit as `v` + the version number, for instance `v1.32` for version 1.32. This is needed [for F-Droid](https://gitlab.com/fdroid/fdroiddata/blob/master/metadata/fr.free.nrw.commons.txt).
5. Publish to Google Play
6. Update Google Play's changelog