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