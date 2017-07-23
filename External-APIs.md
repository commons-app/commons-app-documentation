The Wikimedia Commons Android app uses several external APIs to do its job.

## List of APIs used

- **Commons Mediawiki API**   
    Base endpoint: https://commons.wikimedia.org   
    Documentation: https://commons.wikimedia.org/w/api.php
- **Event Logging**     
    Base endpoint: https://www.wikimedia.org/beacon/   
    Documentation: https://wikitech.wikimedia.org/wiki/Analytics/Systems/EventLogging
- **Wikidata Query Service**   
    Base endpoint: https://query.wikidata.org   
    Documentation: https://www.wikidata.org/wiki/Wikidata:SPARQL_query_service/Wikidata_Query_Help
- **Wikimedia Tools Labs**    
    Base endpoint: https://tools.wmflabs.org   
    Documentation: https://tools.wmflabs.org/
- **Commons Mediawiki**   
    Base endpoint: https://commons.m.wikimedia.org

## List of API endpoints used

### Sign up

#### Sign up (external Webview)
- https://commons.m.wikimedia.org/w/index.php?title=Special:CreateAccount&returnto=Main+Page&returntoquery=welcome%3Dyes

### Log in

#### Get login token

- POST https://commons.wikimedia.org/w/api.php
- meta=tokens&type=login&action=query&format=xml

#### Log in

- POST https://commons.wikimedia.org/w/api.php
- password=...&logintoken=...&username=...&loginreturnurl=https%3A%2F%2Fcommons.wikimedia.org&action=clientlogin&rememberMe=1&format=xml
#### Log event "Log in attempt"

- GET https://www.wikimedia.org/beacon/event?%7B%22schema%22%3A%22MobileAppLoginAttempts%22%2C%22revision%22%3A5257721%2C%22wiki%22%3A%22commonswiki%22%2C%22event%22%3A%7B%22username%22%3A%22...%22%2C%22result%22%3A%22PASS%22%2C%22device%22%3A%22LGE+Nexus+5%22%2C%22platform%22%3A%22Android%5C%2F6.0.1%22%2C%22appversion%22%3A%22Android%5C%2F2.4.2%22%7D%7D;?

### My Recent Uploads (Home)

#### Get previous uploads / New logevents
- GET https://commons.wikimedia.org/w/api.php?lelimit=500&leuser=...&leprop=title%7Ctimestamp%7Cids&list=logevents&action=query&letype=upload&format=xml

#### Get image (for each existing upload)
- GET https://commons.wikimedia.org/w/api.php?iiurlwidth=640&prop=imageinfo&titles=File%3A...&iiprop=url&action=query&format=xml&format=xml

#### Get total number of uploads
- GET https://tools.wmflabs.org/urbanecmbot/uploadsbyuser/uploadsbyuser.py?user=...

### Cancel upload

#### Log event "cancelled upload"
- GET https://www.wikimedia.org/beacon/event?%7B%22schema%22%3A%22MobileAppUploadAttempts%22%2C%22revision%22%3A5334329%2C%22wiki%22%3A%22commonswiki%22%2C%22event%22%3A%7B%22username%22%3A%22...%22%2C%22source%22%3A%22camera%22%2C%22multiple%22%3Atrue%2C%22result%22%3A%22cancelled%22%2C%22device%22%3A%22LGE+Nexus+5%22%2C%22platform%22%3A%22Android%5C%2F6.0.1%22%2C%22appversion%22%3A%22Android%5C%2F2.4.2%22%7D%7D;?

### Upload

#### Upload picture
- POST https://commons.wikimedia.org/w/api.php

#### Log event "Successful upload"
- GET https://www.wikimedia.org/beacon/event?%7B%22schema%22%3A%22MobileAppUploadAttempts%22%2C%22revision%22%3A5334329%2C%22wiki%22%3A%22commonswiki%22%2C%22event%22%3A%7B%22username%22%3A%22...%22%2C%22source%22%3A%22gallery%22%2C%22filename%22%3A%22File%3A...%22%2C%22multiple%22%3Afalse%2C%22result%22%3A%22success%22%2C%22device%22%3A%22LGE+Nexus+5%22%2C%22platform%22%3A%22Android%5C%2F6.0.1%22%2C%22appversion%22%3A%22Android%5C%2F2.4.2%22%7D%7D;?

### Categories

#### Get edit token
- ...

#### Get categories for location
- GET https://commons.wikimedia.org/w/api.php?action=query&prop=categories%7Ccoordinates%7Cpageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=...%7C...&generator=geosearch&ggscoord=...%7C...&ggsradius=10000&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all&formatversion=2

#### Get categories for chosen title
- GET https://commons.wikimedia.org/w/api.php?srlimit=25&list=search&action=query&srwhat=text&format=xml&srsearch=testing&srnamespace=14&format=xml

#### Search category

1. GET https://commons.wikimedia.org/w/api.php?srlimit=25&list=search&action=query&srwhat=text&format=xml&srsearch=t&srnamespace=14&format=xml
2. GET https://commons.wikimedia.org/w/api.php?list=allcategories&aclimit=25&action=query&acprefix=t&format=xml

### Set Category

#### Log event "category set"
- GET https://www.wikimedia.org/beacon/event?%7B%22schema%22%3A%22MobileAppCategorizationAttempts%22%2C%22revision%22%3A5359208%2C%22wiki%22%3A%22commonswiki%22%2C%22event%22%3A%7B%22username%22%3A%22...%22%2C%22categories-count%22%3A1%2C%22files-count%22%3A1%2C%22source%22%3A%22gallery%22%2C%22result%22%3A%22queued%22%2C%22device%22%3A%22LGE+Nexus+5%22%2C%22platform%22%3A%22Android%5C%2F6.0.1%22%2C%22appversion%22%3A%22Android%5C%2F2.4.2%22%7D%7D;?

#### Get revisions
- GET https://commons.wikimedia.org/w/api.php?rvprop=timestamp%7Ccontent&prop=revisions&titles=File%3A...&action=query&format=xml

#### Save new category
- POST https://commons.wikimedia.org/w/api.php
text=%3D%3D+%7B%7Bint%3Afiledesc%7D%7D+%3D%3D%0A%7B%7BInformation%0A%7Cdescription%3D%0A%7Csource%3D%7B%7Bown%7D%7D%0A%7Cauthor%3D%5B%5BUser%3A...%7C...%5D%5D%0A%7Cdate%3D%7B%7BAccording+to+EXIF+data%7C2017-07-23%7D%7D%0A%7D%7D%0A%7B%7BLocation%7C...%7C...%7D%7D%0A%3D%3D+%7B%7Bint%3Alicense-header%7D%7D+%3D%3D%0A%7B%7Bself%7Ccc-by-3.0%7D%7D%0A%0A%7B%7BUploaded+from+Mobile%7Cplatform%3DAndroid%7Cversion%3D2.4.2%7D%7D%0A%5B%5BCategory%3ATest%5D%5D&title=File%3A...&token=...%2B%5C&action=edit&summary=Added+1+categories.+Removed+template+Uncategorized.+Via+Commons+Mobile+App&format=xml


### Nearby

#### Get list of nearby places
- https://query.wikidata.org/sparql?query=SELECT%0A%20%20%20%20%20(SAMPLE(%3Flocation)%20as%20%3Flocation)%0A%20%20%20%20%20%3Fitem%0A%20%20%20%20%20(SAMPLE(COALESCE(%3Fitem_label_preferred_language%2C%20%3Fitem_label_any_language))%20as%20%3Flabel)%0A%20%20%20%20%20(SAMPLE(%3FclassId)%20as%20%3Fclass)%0A%20%20%20%20%20(SAMPLE(COALESCE(%3Fclass_label_preferred_language%2C%20%3Fclass_label_any_language%2C%20%22%3F%22))%20as%20%3Fclass_label)%0A%20%20%20%20%20(SAMPLE(COALESCE(%3Ficon0%2C%20%3Ficon1))%20as%20%3Ficon)%0A%20%20%20%20%20(SAMPLE(COALESCE(%3Femoji0%2C%20%3Femoji1))%20as%20%3Femoji)%0A%20%20%20%20%20%3FwikipediaArticle%0A%20%20%20%20%20%3FcommonsArticle%0A%20%20%20WHERE%20%7B%0A%20%20%20%20%20%23%20Around%20given%20location...%0A%20%20%20%20%20SERVICE%20wikibase%3Aaround%20%7B%0A%20%20%20%20%20%20%20%3Fitem%20wdt%3AP625%20%3Flocation.%0A%20%20%20%20%20%20%20bd%3AserviceParam%20wikibase%3Acenter%20%22Point(...%20...)%22%5E%5Egeo%3AwktLiteral.%0A%20%20%20%20%20%20%20bd%3AserviceParam%20wikibase%3Aradius%20%221.00%22%20.%20%23%20Radius%20in%20kilometers.%0A%20%20%20%20%20%7D%0A%0A%20%20%20%20%20%23%20...%20and%20without%20an%20image.%0A%20%20%20%20%20MINUS%20%7B%3Fitem%20wdt%3AP18%20%5B%5D%7D%0A%0A%20%20%20%20%20%23%20Get%20the%20label%20in%20the%20preferred%20language%20of%20the%20user%2C%20or%20any%20other%20language%20if%20no%20label%20is%20available%20in%20that%20language.%0A%20%20%20%20%20OPTIONAL%20%7B%3Fitem%20rdfs%3Alabel%20%3Fitem_label_preferred_language.%20FILTER%20(lang(%3Fitem_label_preferred_language)%20%3D%20%22en%22)%7D%0A%20%20%20%20%20OPTIONAL%20%7B%3Fitem%20rdfs%3Alabel%20%3Fitem_label_any_language%7D%0A%0A%20%20%20%20%20%23%20Get%20the%20class%20label%20in%20the%20preferred%20language%20of%20the%20user%2C%20or%20any%20other%20language%20if%20no%20label%20is%20available%20in%20that%20language.%0A%20%20%20%20%20OPTIONAL%20%7B%0A%20%20%20%20%20%20%20%3Fitem%20p%3AP31%2Fps%3AP31%20%3FclassId.%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%3FclassId%20rdfs%3Alabel%20%3Fclass_label_preferred_language.%20FILTER%20(lang(%3Fclass_label_preferred_language)%20%3D%20%22en%22)%7D%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%3FclassId%20rdfs%3Alabel%20%3Fclass_label_any_language%7D%0A%0A%20%20%20%20%20%20%20%23%20Get%20icon%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%20%3FclassId%20wdt%3AP2910%20%3Ficon0.%20%7D%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%20%3FclassId%20wdt%3AP279*%2Fwdt%3AP2910%20%3Ficon1.%20%7D%0A%20%20%20%20%20%20%20%23%20Get%20emoji%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%20%3FclassId%20wdt%3AP487%20%3Femoji0.%20%7D%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%20%3FclassId%20wdt%3AP279*%2Fwdt%3AP487%20%3Femoji1.%20%7D%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%0A%20%20%20%20%20%20%20%20%20%20%3Fsitelink%20schema%3Aabout%20%3Fitem%20.%0A%20%20%20%20%20%20%20%20%20%20%3Fsitelink%20schema%3AinLanguage%20%22en%22%0A%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%20OPTIONAL%20%7B%0A%20%20%20%20%20%20%20%20%20%20%20%3FwikipediaArticle%20%20%20schema%3Aabout%20%3Fitem%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20schema%3AisPartOf%20%3Chttps%3A%2F%2Fen.wikipedia.org%2F%3E%20.%0A%20%20%20%20%20%20%20%20%20%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22en%22%20%7D%0A%20%20%20%20%20%20%20%20%20%7D%0A%0A%20%20%20%20%20%20%20%20%20OPTIONAL%20%7B%0A%20%20%20%20%20%20%20%20%20%20%20%3FcommonsArticle%20%20%20schema%3Aabout%20%3Fitem%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20schema%3AisPartOf%20%3Chttps%3A%2F%2Fcommons.wikimedia.org%2F%3E%20.%0A%20%20%20%20%20%20%20%20%20%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22en%22%20%7D%0A%20%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%7D%0A%20%20%20%7D%0A%20%20%20GROUP%20BY%20%3Fitem%20%3FwikipediaArticle%20%3FcommonsArticle%0A

#### Get list of places (without Wikidata setting)
- GET https://tools.wmflabs.org/wiki-needs-pictures/data/data.csv
(202k lines, 11 MB!)