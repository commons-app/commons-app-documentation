Describes the rationale of the categorization suggestion strategy, and the API calls with sample request/response for each API used.

Three new types of category suggestions were implemented as part of the Outreachy Dec '15 - Mar '16 project:

**1. If a picture with geolocation is uploaded, nearby category suggestions are offered based on the categories of other Commons images with similar coordinates.**

**Rationale:** Geographically-related categories are often relevant to an uploaded image, so suggesting them at the start might make categorization easier for users. Prior to this enhancement, the only categories suggested were recently-used ones.

**Choice of API:** This is documented at https://github.com/nicolas-raoul/apps-android-commons/wiki/Location-based-category-search . We query the Commons MediaWiki API for the Commons categories of pictures with geolocation within a radius of 10km of the uploaded pic's geolocation. This API automatically returns the n closest pictures.

**Sample request:** 

**Sample response:**

**2. If a picture with no geolocation is uploaded, nearby category suggestions are offered based on the user's current location. This is optional and only works if enabled in Settings.**

**Rationale: **

**Choice of API:**

**Sample request:**

**Sample response:**

**3. Category search (when typing in the search field) has been made more flexible, whereas previously this was done solely by prefix search. E.g. now searching for 'latte' should be able to return 'iced latte'.**

**Rationale:** 

**Choice of API:**

**Sample request:**

**Sample response:**