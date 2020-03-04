Three new types of category suggestions were implemented as part of the Outreachy Dec '15 - Mar '16 project:

# 1. If a picture with geolocation is uploaded, nearby category suggestions are offered based on the categories of other Commons images with similar coordinates.

**Rationale:** Geographically-related categories are often relevant to an uploaded image, so suggesting them at the start makes categorization easier. 

**Choice of API:** This is documented at https://github.com/nicolas-raoul/apps-android-commons/wiki/Location-based-category-search . We query the Commons MediaWiki API for the Commons categories of pictures with geolocation within a radius of 10km of the uploaded pic's geolocation. This API automatically returns the n closest pictures. 

The categories found are also cached using the quadtree library, with a short-lived area->category dictionary established. If another pic is uploaded that has a geolocation that falls within a cached area, the cached categories are displayed and the API is not queried. This is done to reduce the load on the API, as people often upload several pics with similar locations.

**Sample request:** 

Logs of latitude and longitude extracted from image:

    02-20 03:15:57.185: D/Image(1993): Latitude: 37/1,48/1,24/1 S
    02-20 03:15:57.185: D/Image(1993): Longitude: 175/1,18/1,10/1 E
    02-20 03:15:57.185: D/fr.free.nrw.commons.upload.ShareActivity(1993): Decimal coords of image:-37.806666666666665|175.30277777777778

URL sent to API:    
https://commons.wikimedia.org/w/api.php?action=query&prop=categories%7Ccoordinates%7Cpageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=-37.806666666666665%7C175.30277777777778&generator=geosearch&ggscoord=-37.806666666666665%7C175.30277777777778&ggsradius=10000&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all&formatversion=2

**Sample response:**

    [Hamilton Gardens, Ornamental ponds, 2008 in New Zealand, Ponds in New Zealand, Japanese gardens in New Zealand, Trees in New Zealand, Sheds in New Zealand]


***


# 2. If a picture with no geolocation is uploaded, nearby category suggestions are offered based on the user's current location. This is optional and only works if enabled in Settings.

**Rationale:** An extension of feature #1. Useful if someone doesn't want to geotag their pictures and uploads them while still in the same area. Disabled by default for privacy.

**Choice of API:** The same API as feature #1 is used, just queried using the user's geolocation instead of the picture's.

**Sample request:** 

Logs shown when submitting a pic with no coords and option is enabled:

    02-21 18:02:54.991: D/fr.free.nrw.commons.upload.GPSExtractor(3798): Picture has no GPS info
    02-21 18:02:54.991: D/fr.free.nrw.commons.upload.GPSExtractor(3798): Gps pref set to: true
    02-21 18:02:54.991: D/fr.free.nrw.commons.upload.GPSExtractor(3798): Current location values: Lat = -37.77988229 Long = 175.27933809


**Sample response:**

    [Hamilton, New Zealand, Gardens, Bus stops in New Zealand, Vandalism, Photographs taken on 1970-01-01, Photographs taken on 2015-12-27]



***


# 3. Category search (when typing in the search field) has been made more flexible

**Rationale:** Prior to this, category search was done solely by prefix search. E.g. if you searched for 'latte', you would only get categories that start with 'latte', which excludes many potentially relevant categories (i.e. 'iced latte'). Prefix search is useful when you are certain of what the exact name of the category you want is, but not so useful if you are unsure. So we wanted to retain prefix search, but also provide additional suggestions for relevant categories that do not share that prefix.

**Choice of API:** Documented at https://github.com/nicolas-raoul/apps-android-commons/wiki/Fuzzy-category-search . We settled on 'Method A', which queries the Commons MediaWiki API for pages of type "Category" (srnamespace=14), maximum 10 results (srlimit=10). These results are aggregated with the prefix search results and the duplicate suggestions are eliminated before they are displayed.

**Sample request:**

Typing "Latte" into search box

URL sent to API:  
https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=latte

**Sample response:**


    Method A result: [Latte, Iced latte, Latte (Construction navale), Daihatsu Move Latte, Hearts in latte art, Latte macchiato, Latte Stone Park, Latte stones in heraldry, Santa Maria del Latte (Montevarchi), Latte stones, Sacro Latte, Montegrosso Pian Latte, Keep of Fort-la-Latte, Churches in Montegrosso Pian Latte, Cats in latte art, Latte art, Ramparts of Fort-la-Latte, Animals in latte art, Tempietto della reliquia del Sacro Latte, Videos of latte art, Latte Schiffbau, Lattes, San Biagio (Montegrosso Pian Latte), Nostra Signora di Latte Dolce (Sassari), Madonna lactans]
    Prefix result: [Latte, Latte (Construction navale), Latte Art, Latte M, Latte Schiffbau, Latte Stone Park, Latte art, Latte macchiato, Latte stones, Latte stones in heraldry, Lattenbach, Lattengebirge, Latter-Day Saint from American Samoa, Latter-Day Saint writers, Latter-Day Saints, Latter-Day Saints from the United States, Latter-day, Latter-day Saint, Latter-day Saint Temple, Latter-day Saint biographical encyclopedia, Latter-day Saint biographical encyclopedia (missing volume), Latter-day Saint biographical encyclopedia v.1, Latter-day Saint biographical encyclopedia v.2, Latter-day Saint biographical encyclopedia v.3, Latter-day Saint biographical encyclopedia v.4]
    Final results List: [Latte, Iced latte, Latte (Construction navale), Daihatsu Move Latte, Hearts in latte art, Latte macchiato, Latte Stone Park, Latte stones in heraldry, Santa Maria del Latte (Montevarchi), Latte stones, Sacro Latte, Montegrosso Pian Latte, Keep of Fort-la-Latte, Churches in Montegrosso Pian Latte, Cats in latte art, Latte art, Ramparts of Fort-la-Latte, Animals in latte art, Tempietto della reliquia del Sacro Latte, Videos of latte art, Latte Schiffbau, Lattes, San Biagio (Montegrosso Pian Latte), Nostra Signora di Latte Dolce (Sassari), Madonna lactans, Latte Art, Latte M, Lattenbach, Lattengebirge, Latter-Day Saint from American Samoa, Latter-Day Saint writers, Latter-Day Saints, Latter-Day Saints from the United States, Latter-day, Latter-day Saint, Latter-day Saint Temple, Latter-day Saint biographical encyclopedia, Latter-day Saint biographical encyclopedia (missing volume), Latter-day Saint biographical encyclopedia v.1, Latter-day Saint biographical encyclopedia v.2, Latter-day Saint biographical encyclopedia v.3, Latter-day Saint biographical encyclopedia v.4]
   
   
***

   
**Note:** In order to use the QuadTree dependency in Android Studio:   
1. Make sure QuadTree JAR is in lib folder   
2. Right click on the jar file and select the option "Add as Library"   
3. Go to Project Structure > Modules > Dependencies and click the green + sign   
4. Select "library" and then select the QuadTree library   