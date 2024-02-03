# Software design document

[WIP]

[![Architecture](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Commons_Mobile_App_architecture.svg/1000px-Commons_Mobile_App_architecture.svg.png)](https://commons.wikimedia.org/wiki/File:Commons_Mobile_App_architecture.svg)

## Category suggestions

When search field is empty, display:
* Category suggestions based on title that user input as the image title for that upload
* Category suggestions based on location of image (if geotagged)
* Category suggestions based on recently-selected categories for previous uploads (e.g. if user uploaded an image previously with the category "Japanese art", that would be suggested in their next upload)
* Categories associated with the Wikidata item that an image is being uploaded for (if uploaded via Nearby)
* Any categories that the user has selected for this particular upload, at the top of the list with a checkmark next to it

When user types in search field, display:
* The results of that category search. Do not display the other category suggestions, only the results of the search
* Any categories that the user has selected for this particular upload, at the top of the list with a checkmark next to it

## Upload flow
* Copy the image to the cache folder.
* Remove some of the EXIF data of the cached image, depending on the settings in `Settings`>`Manage EXIF Tags`.
* Upload the image to the server.
* Delete the cached image.

Removing the EXIF data of the image is important as image might contain some personal information (author, camera model, serial numbers, etc) as its metadata. Furthermore, there is an [API](https://github.com/commons-app/apps-android-commons/issues/175#issue-164989234) that checks for the image in Commons server using the SHA1 of the image. Deleting EXIF data from an image changes the SHA1 of the image thus checking for an image in the server requires you to gennerate SHA1 of the modified (EXIF similarly removed) image. 
