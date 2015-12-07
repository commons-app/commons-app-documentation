Task: Identify the best strategy/APIs to find Commons categories that are within a certain radius of specified GPS coordinates.

This page will be used to document the results of testing the categories obtained via different APIs/strategies against the benchmark of categories that have been manually entered (by the Commons community or by myself) for each picture. 

Pictures are found by:

1. Visiting https://commons.wikimedia.org/wiki/Special:Random/File
2. Eliminating files that are not photos or could not possibly be obtained via a smartphone
3. File must have location data available

### Sample 1

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Palermo_Cathedral2.JPG/120px-Palermo_Cathedral2.JPG)

URL: https://commons.wikimedia.org/wiki/File:Palermo_Cathedral2.JPG  
Camera location: 38° 06′ 49.93″ N, 13° 21′ 22.55″ E    
Decimal degrees: 38.11386944444445, 13.356263888888888    
Manual categorization: 2 good categories
* Side views of the Cathedral of Palermo - Architectural details -> listed on Commons
* Cathedral (Palermo) - Exterior -> my opinion

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C38.11386944444445%2C13.356263888888888%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 2 good categories (radius 0.1km):
 * Cathedral (Palermo)
 * La Martorana (Palermo)
* 0 false positives  


Commons API:  
"Existing pics at that location" strategy:  

### Sample 2

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Oberstaufen_Heiligen-Geist_church.jpg/120px-Oberstaufen_Heiligen-Geist_church.jpg)

URL: https://commons.wikimedia.org/wiki/File:Oberstaufen_Heiligen-Geist_church.jpg  
Camera location: 47° 33′ 14.42″ N, 10° 01′ 06.11″ E  
Decimal degrees: 47.554005555555555, 10.01836388888889  
Manual categorization: 3 good categories
* Churches in Oberstaufen -> listed on Commons
* Cultural heritage monuments in Oberstaufen -> listed on Commons
* Holy Spirit churches in Bavaria -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C47.554005555555555%2C10.01836388888889%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (needed to expand radius to 1km to find):
 * St. Peter und Paul (Oberstaufen)
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy:  

### Sample 3

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg/120px-Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg)

URL: https://commons.wikimedia.org/wiki/File:Slipway_at_Canvey_Point_-_geograph.org.uk_-_1207137.jpg  
Camera location: 51° 31′ 14.41″ N, 0° 37′ 28.77″ E  
Decimal degrees: 51.520669444444444, 0.6246583333333333  
Manual categorization: 2 good categories
* Essex -> listed on Commons
* Canvey Island -> my opinion

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C51.520669444444444%2C0.6246583333333333%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (needed to expand radius to 1km to find):
 * Canvey Island F.C.
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy:  

### Sample 4

![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg/120px-2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg)

URL: https://commons.wikimedia.org/wiki/File:2008_07_15_Bird_Care_Centre_of_Castel_Tyrol_61210_D9917.jpg  
Camera location: 46° 41′ 37.45″ N, 11° 08′ 38.64″ E   
Decimal degrees: 46.69373611111111, 11.144066666666665  
Manual categorization: 3 good categories
* Bird Care Centre of Tirol Castle -> listed on Commons
* Falconry displays -> listed on Commons
* Gyps in flight -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C46.69373611111111%2C11.144066666666665%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)
* 0 good categories (tried both 0.1km and 1km radius. 0.1km found nothing, 1km found Tirol Castle which is close but not what the pic is about)
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy:  

### Sample 5

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/MammysCupboardSept2008E.jpg/90px-MammysCupboardSept2008E.jpg)

URL: https://commons.wikimedia.org/wiki/File:MammysCupboardSept2008E.jpg  
Camera location: 31° 28′ 41″ N, 91° 22′ 16.9″ W  
Decimal degrees: 31.478055555555553, -91.3713611111111  
Manual categorization: 1 good category
* Mammy's Cupboard Restaurant -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C31.478055555555553%2C-91.3713611111111%2C0.1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (radius 0.1km):
 * Mammy's Cupboard Restaurant
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy:  

### Sample 6

![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg/120px-Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg)

URL: https://commons.wikimedia.org/wiki/File:Tai%27an_Dai_Miao_2015.08.13_10-18-46.jpg    
Camera location: 36° 11′ 41.48″ N, 117° 07′ 30.97″ E  
Decimal degrees: 36.194855555555556, 117.12526944444444
Manual categorization: 1 good category
* Dai miao -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C36.194855555555556%2C117.12526944444444%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 0 good categories (tried both 0.1km and 1km radius. 0.1km found nothing, 1km found Tai'an which is the prefecture that Dai Miao is located in, but not what we're looking for)
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy: 

### Sample 7

![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Tyr_Reykjavik_20120624.JPG/120px-Tyr_Reykjavik_20120624.JPG)

URL: https://commons.wikimedia.org/wiki/File:Tyr_Reykjavik_20120624.JPG   
Camera location: 64° 09′ 00.28″ N, 21° 56′ 19.82″ W  
Decimal degrees: 64.15007777777778, -21.93883888888889  
Manual categorization: 3 good categories
* Reykjavik harbour -> listed on Commons
* Týr (ship, 1975) -> listed on Commons
* Icelandic Coast Guard ships in Reykjavík harbour -> listed on Commons

WikiData API:  [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C64.15007777777778%2C-21.93883888888889%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 0 good categories (0.1km found nothing, 1km found many wrong categories)
* 0 false positives 

Commons API:  
"Existing pics at that location" strategy: 

### Sample 8

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Tupadly%2C_n%C3%A1ves.jpg/120px-Tupadly%2C_n%C3%A1ves.jpg)

URL: https://commons.wikimedia.org/wiki/File:Tupadly,_n%C3%A1ves.jpg    
Camera location: 50° 26′ 32.01″ N, 14° 28′ 23.83″ E   
Decimal degrees: 50.44222499999999, 14.473286111111111  
Manual categorization: 1 good category  
* Tupadly (Mělník District) -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C50.44222499999999%2C14.473286111111111%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (needed to expand radius to 1km to find):
 * Tupadly (Mělník District)
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy: 

### Sample 9

![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg/120px-Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg)

URL: https://commons.wikimedia.org/wiki/File:Allt_Mor_na_h-Uamha_-_geograph.org.uk_-_411143.jpg   
Camera location: 56° 59′ 42.27″ N, 6° 16′ 18″ W  
Decimal degrees: 56.995075, -6.2716666666666665  
Manual categorization: 2 good categories  
* Fords in Scotland -> listed on Commons
* Allt Mor na h-Uamha -> listed on Commons

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C56.995075%2C-6.2716666666666665%2C5%5D&pagepile=885&props=373%2C625&items=&show=1)
* 0 good categories (0.1km and 1km found nothing, 3km and 5km found unrelated locations)  
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy: 

### Sample 10

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Kest%C5%99any_-_Horn%C3%AD_tvrz_%288%29.jpg/120px-Kest%C5%99any_-_Horn%C3%AD_tvrz_%288%29.jpg)

URL: https://commons.wikimedia.org/wiki/File:Kest%C5%99any_-_Horn%C3%AD_tvrz_(8).jpg  
Camera location: 49° 16′ 14.4″ N, 14° 04′ 25.57″ E  
Decimal degrees: 49.27066666666666, 14.073769444444444  
Manual categorization: 3 good categories  
* Horní tvrz (Kestřany) -> listed on Commons
* Tvrze -> listed on Commons
* Kestřany -> my opinion

WikiData API: [results](https://tools.wmflabs.org/wikidata-todo/tabernacle.html?wdq=claim%5B373%5D%20AND%20around%5B625%2C49.27066666666666%2C14.073769444444444%2C1%5D&pagepile=885&props=373%2C625&items=&show=1)  
* 1 good category (needed to expand radius to 1km to find):
 * Kestřany
* 0 false positives  

Commons API:  
"Existing pics at that location" strategy: 