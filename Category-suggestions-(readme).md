Describes the rationale of the categorization suggestion strategy, and the API calls with sample request/response for each API used.

Three new types of category suggestions were implemented as part of the Outreachy Dec '15 - Mar '16 project:

**1. If a picture with geolocation is uploaded, nearby category suggestions are offered based on the categories of other Commons images with similar coordinates.**

**Rationale:** Geographically-related categories are often relevant to an uploaded image, so suggesting them at the start makes categorization easier. Prior to this enhancement, the only categories suggested were recently-used ones.

**Choice of API:** This is documented at https://github.com/nicolas-raoul/apps-android-commons/wiki/Location-based-category-search . We query the Commons MediaWiki API for the Commons categories of pictures with geolocation within a radius of 10km of the uploaded pic's geolocation. This API automatically returns the n closest pictures.

**Sample request:** 

Logs of latitude and longitude extracted from image:

    02-20 03:15:57.185: D/Image(1993): Latitude: 37/1,48/1,24/1 S
    02-20 03:15:57.185: D/Image(1993): Longitude: 175/1,18/1,10/1 E
    02-20 03:15:57.185: D/fr.free.nrw.commons.upload.ShareActivity(1993): Decimal coords of image:-37.806666666666665|175.30277777777778

URL sent to API:    
https://commons.wikimedia.org/w/api.php?action=query&prop=categories%7Ccoordinates%7Cpageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=-37.806666666666665%7C175.30277777777778&generator=geosearch&ggscoord=-37.806666666666665%7C175.30277777777778&ggsradius=10000&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all&formatversion=2




**Sample response:**

**2. If a picture with no geolocation is uploaded, nearby category suggestions are offered based on the user's current location. This is optional and only works if enabled in Settings.**

**Rationale:**

**Choice of API:**

**Sample request:**

**Sample response:**

**3. Category search (when typing in the search field) has been made more flexible, whereas previously this was done solely by prefix search. E.g. now searching for 'latte' should be able to return 'iced latte'.**

**Rationale:** 

**Choice of API:**

**Sample request:**

**Sample response:**