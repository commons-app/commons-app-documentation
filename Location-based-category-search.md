Task: Identify the best strategy/APIs to find Commons categories that are within a certain radius of specified GPS coordinates.

This page will be used to document the results of testing the categories obtained via different APIs/strategies against the benchmark of categories that have been manually entered (by the Commons community or by myself) for each picture. 

Pictures are found by:

1. Visiting https://commons.wikimedia.org/wiki/Special:Random/File
2. Eliminating files that are not photos or could not possibly be obtained via a smartphone
3. File must have location data available

For the **"existing pics at that location" strategy** tests, I manually exclude the categories found that are attached to the exact same file that is being used for the test.

### Sample 1

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Palermo_Cathedral2.JPG/120px-Palermo_Cathedral2.JPG)

URL: https://commons.wikimedia.org/wiki/File:Palermo_Cathedral2.JPG  
Camera location: 38° 06′ 49.93″ N, 13° 21′ 22.55″ E    
Decimal degrees: 38.11386944444445, 13.356263888888888    
Manual categorization: 5 good categories
* Side views of the Cathedral of Palermo - Architectural details -> listed on Commons
* Cathedral (Palermo) - Exterior -> my opinion
* La Martorana (Palermo) 
* Saint Rosalia by Vincenzo Vitaliano 
* Side views of the Cathedral of Palermo 

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C38.11386944444445%2C13.356263888888888%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 2 good categories (radius 0.1km):
 * Cathedral (Palermo)
 * La Martorana (Palermo)
* 1 false positives:
 * Museo Diocesano (Palermo)

**"Existing pics at that location" strategy:**
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=38.11386944444445%7C13.356263888888888&generator=geosearch&redirects=&ggscoord=38.11386944444445%7C13.356263888888888&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 3 good categories: Side views of the Cathedral of Palermo, Cathedral (Palermo), Saint Rosalia by Vincenzo Vitaliano
 * 3 false positives: Piazza del Duomo (Palermo), Porch of the Cathedral of Palermo, Church towers of the Cathedral of Palermo

**Method D**
* Radius with min 5 categories: 100m
* Position of good categories: 1, 3, 4

### Sample 2

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Oberstaufen_Heiligen-Geist_church.jpg/120px-Oberstaufen_Heiligen-Geist_church.jpg)

URL: https://commons.wikimedia.org/wiki/File:Oberstaufen_Heiligen-Geist_church.jpg  
Camera location: 47° 33′ 14.42″ N, 10° 01′ 06.11″ E  
Decimal degrees: 47.554005555555555, 10.01836388888889  
Manual categorization: 5 good categories
* Churches in Oberstaufen -> listed on Commons
* Cultural heritage monuments in Oberstaufen -> listed on Commons
* Holy Spirit churches in Bavaria -> listed on Commons
* St. Peter und Paul (Oberstaufen) 
* Lourdeskapelle (Oberstaufen) 

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C47.554005555555555%2C10.01836388888889%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category:
 * St. Peter und Paul (Oberstaufen)
* 0 false positives  
  
**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=47.554005555555555%7C10.01836388888889&generator=geosearch&redirects=&ggscoord=47.554005555555555%7C10.01836388888889&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Lourdeskapelle (Oberstaufen)
 * 0 false positives

**Method D**
* Radius with min 5 categories: 1000m 
* Additional good categories found: Cultural heritage monuments in Oberstaufen, Buildings in Oberstaufen, St. Peter und Paul (Oberstaufen)
* Position of good categories: 1, 2, 4, 5

### Sample 3

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg/120px-Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg)

URL: https://commons.wikimedia.org/wiki/File:Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg  
Camera location: 51° 31′ 14.41″ N, 0° 37′ 28.77″ E  
Decimal degrees: 51.520669444444444, 0.6246583333333333  
Manual categorization: 3 good categories
* Essex -> listed on Commons
* Canvey Island -> my opinion
* Canvey Island F.C. 


**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C51.520669444444444%2C0.6246583333333333%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category:
 * Canvey Island F.C.
* 0 false positives  

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=51.520669444444444%7C0.6246583333333333&generator=geosearch&redirects=&ggscoord=51.520669444444444%7C0.6246583333333333&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Essex
 * 1 false positives: Images from the Geograph British Isles project needing categories as of 26 February 2011

**Method D**
* Radius with min 5 categories: 1000m
* Additional good categories found: Canvey Island
* Position of good categories: 1, 3

### Sample 4

![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg/120px-2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg)

URL: https://commons.wikimedia.org/wiki/File:2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg  
Camera location: 46° 41′ 37.45″ N, 11° 08′ 38.64″ E   
Decimal degrees: 46.69373611111111, 11.144066666666665  
Manual categorization: 3 good categories
* Bird Care Centre of Tirol Castle -> listed on Commons
* Falconry displays -> listed on Commons
* Gyps in flight -> listed on Commons

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C46.69373611111111%2C11.144066666666665%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)
* 0 good categories
* 1 false positive: Tirol Castle

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=46.69373611111111%7C11.144066666666665&generator=geosearch&redirects=&ggscoord=46.69373611111111%7C11.144066666666665&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 2 good categories: Bird Care Centre of Tirol Castle, Falconry displays
 * 3 false positives: Corvus corax (captive), Coragyps atratus (captive), Parabuteo unicinctus in flight (captive)

**Method D**
* Radius with min 5 categories: 100m
* Position of good categories: 1, 1 (all categories have similar distance. maybe taken by 1 person?)

### Sample 5

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/MammysCupboardSept2008E.jpg/90px-MammysCupboardSept2008E.jpg)

URL: https://commons.wikimedia.org/wiki/File:MammysCupboardSept2008E.jpg  
Camera location: 31° 28′ 41″ N, 91° 22′ 16.9″ W  
Decimal degrees: 31.478055555555553, -91.3713611111111  
Manual categorization: 1 good category
* Mammy's Cupboard Restaurant -> listed on Commons

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C31.478055555555553%2C-91.3713611111111%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category:
 * Mammy's Cupboard Restaurant
* 0 false positives  

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=31.478055555555553%7C-91.3713611111111&generator=geosearch&redirects=&ggscoord=31.478055555555553%7C-91.3713611111111&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Mammy's Cupboard Restaurant  
 * 0 false positives

**Method D**
* Radius with min 5 categories: does not exist, increased until received error (ggsradius may not be over 10000 (set to 100000) for users)
* Position of good categories: 1

### Sample 6

![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg/120px-Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg)

URL: https://commons.wikimedia.org/wiki/File:Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg    
Camera location: 36° 11′ 41.48″ N, 117° 07′ 30.97″ E  
Decimal degrees: 36.194855555555556, 117.12526944444444
Manual categorization: 1 good category
* Dai miao -> listed on Commons

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C36.194855555555556%2C117.12526944444444%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 0 good categories
* 1 false positives : Tai'an

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=36.194855555555556%7C117.12526944444444&generator=geosearch&redirects=&ggscoord=36.194855555555556%7C117.12526944444444&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Dai miao
 * 0 false positives

**Method D**
* Radius with min 5 categories: nonexistent (ggsradius may not be over 10000 (set to 100000) for users)
* Position of good categories: 1

### Sample 7

![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Tyr_Reykjavik_20120624.JPG/120px-Tyr_Reykjavik_20120624.JPG)

URL: https://commons.wikimedia.org/wiki/File:Tyr_Reykjavik_20120624.JPG   
Camera location: 64° 09′ 00.28″ N, 21° 56′ 19.82″ W  
Decimal degrees: 64.15007777777778, -21.93883888888889  
Manual categorization: 3 good categories
* Reykjavik harbour -> listed on Commons
* Týr (ship, 1975) -> listed on Commons
* Icelandic Coast Guard ships in Reykjavík harbour -> listed on Commons

**WikiData API:**  [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C64.15007777777778%2C-21.93883888888889%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 0 good categories 
* 0 false positives 

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=64.15007777777778%7C-21.93883888888889&generator=geosearch&redirects=&ggscoord=64.15007777777778%7C-21.93883888888889&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 0 good categories 
 * 2 false positives: Monuments and memorials in Reykjav\u00edk, 2008 in Reykjav\u00edk

**Method D**
* Radius with min 5 categories:
* Position of good categories:

### Sample 8

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Tupadly%2C_n%C3%A1ves.jpg/120px-Tupadly%2C_n%C3%A1ves.jpg)

URL: https://commons.wikimedia.org/wiki/File:Tupadly,_n%C3%A1ves.jpg    
Camera location: 50° 26′ 32.01″ N, 14° 28′ 23.83″ E   
Decimal degrees: 50.44222499999999, 14.473286111111111  
Manual categorization: 1 good category  
* Tupadly (Mělník District) -> listed on Commons

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C50.44222499999999%2C14.473286111111111%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (needed to expand radius to 1km to find):
 * Tupadly (Mělník District)
* 3 false positives: Mokřady dolní Liběchovky, Cultural monuments in Tupadly (Mělník District), Stráně Hlubockého dolu

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=50.44222499999999%7C14.473286111111111&generator=geosearch&redirects=&ggscoord=50.44222499999999%7C14.473286111111111&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Tupadly (M\u011bln\u00edk District) 
 * 5 false positives: Bell towers in M\u011bln\u00edk District, Chapels in M\u011bln\u00edk District, Cultural monuments in Tupadly (M\u011bln\u00edk District), Lib\u011bchovka, Castle Slav\u00edn

**Method D**
* Radius with min 5 categories:
* Position of good categories:

### Sample 9

![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg/120px-Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg)

URL: https://commons.wikimedia.org/wiki/File:Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg   
Camera location: 56° 59′ 42.27″ N, 6° 16′ 18″ W  
Decimal degrees: 56.995075, -6.2716666666666665  
Manual categorization: 2 good categories  
* Fords in Scotland -> listed on Commons
* Allt Mor na h-Uamha -> listed on Commons

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C56.995075%2C-6.2716666666666665%2C5%5D&pagepile=885&props=373%2C625&items=&show=1)
* 0 good categories 
* 0 false positives  

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=56.995075%7C-6.2716666666666665&generator=geosearch&redirects=&ggscoord=56.995075%7C-6.2716666666666665&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 1 good categories: Allt Mor na h-Uamha
 * 1 false positive: Hallival

**Method D**
* Radius with min 5 categories:
* Position of good categories:

### Sample 10

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Kest%C5%99any_-_Horn%C3%AD_tvrz_%288%29.jpg/120px-Kest%C5%99any_-_Horn%C3%AD_tvrz_%288%29.jpg)

URL: https://commons.wikimedia.org/wiki/File:Kest%C5%99any_-_Horn%C3%AD_tvrz_(8).jpg  
Camera location: 49° 16′ 14.4″ N, 14° 04′ 25.57″ E  
Decimal degrees: 49.27066666666666, 14.073769444444444  
Manual categorization: 3 good categories  
* Horní tvrz (Kestřany) -> listed on Commons
* Tvrze -> listed on Commons
* Kestřany -> my opinion

**WikiData API:** [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C49.27066666666666%2C14.073769444444444%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category:
 * Kestřany
* 0 false positives  

**"Existing pics at that location" strategy:**  
* 100m radius: [results](https://commons.wikimedia.org/wiki/Special:ApiSandbox#action=query&prop=categories|coordinates|pageprops&format=json&clshow=!hidden&coprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&codistancefrompoint=49.27066666666666%7C14.073769444444444&generator=geosearch&redirects=&ggscoord=49.27066666666666%7C14.073769444444444&ggsradius=100&ggslimit=10&ggsnamespace=6&ggsprop=type%7Cname%7Cdim%7Ccountry%7Cregion%7Cglobe&ggsprimary=all)
 * 2 good categories: Horn\u00ed tvrz (Kest\u0159any), Tvrze
 * 0 false positives

**Method D**
* Radius with min 5 categories:
* Position of good categories:


### WikiData results
* Score for sample 1 = 0.0666666666667
* Score for sample 2 = 0.0666666666667
* Score for sample 3 = 0.111111111111
* Score for sample 4 = -0.111111111111
* Score for sample 5 = 0.333333333333
* Score for sample 6 = -0.333333333333
* Score for sample 7 = 0.0
* Score for sample 8 = -0.666666666667
* Score for sample 9 = 0.0
* Score for sample 10 = 0.111111111111
* Total score = -0.422222222222

### "Existing pics at location" strategy
* Score for sample 1 = 0.0
* Score for sample 2 = 0.0666666666667
* Score for sample 3 = 0.0
* Score for sample 4 = -0.111111111111
* Score for sample 5 = 0.333333333333
* Score for sample 6 = 0.333333333333
* Score for sample 7 = -0.222222222222
* Score for sample 8 = -1.33333333333
* Score for sample 9 = 0.0
* Score for sample 10 = 0.222222222222
* Total score = -0.711111111111