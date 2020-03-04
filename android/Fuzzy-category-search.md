# Fuzzy category search

# Test data

## Sample generation methodology

1. Go to https://commons.wikimedia.org/wiki/Special:Random/File
2. Try another if not inspiring
3. Without looking at anything below the image (just looking at the image and image name), imagine what an average person might type to search for the appropriate category(ies).
4. Add a sample below. Include the thumbnail that can be found at the bottom of the Commons page, all the strings you have thought about, and the actual category.

## Sample 1

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Guildford_Walk%2C_Sheffield_-_geograph.org.uk_-_1426491.jpg/120px-Guildford_Walk%2C_Sheffield_-_geograph.org.uk_-_1426491.jpg)

**Actual category:** 
- https://commons.wikimedia.org/wiki/Category:Houses_in_South_Yorkshire
- I would argue that https://commons.wikimedia.org/wiki/Category:Apartment_buildings would apply too.

**Guessed categories:**
- apartment building
  - Method A: [0 actual categories](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=apartment%20building)
  - Method B: [1 actual category (Apartment_Buildings)](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:apartment%20building)
- Residential building
  - Method A: [0 actual categories](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=residential%20building)
  - Method B: [0 actual categories](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:residential%20building)
- Four-storeys house
  - Method A: [0 actual categories](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=residential%20building)
  - Method B: [0 actual categories](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:four-storeys%20house)



## Sample 2

![](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Southdown_Power_Station_stacks.jpg/120px-Southdown_Power_Station_stacks.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Power_plants_in_New_Zealand

**Guessed categories:**
- electricity generation in new zeland
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=electricity%20generation%20in%20new%20zeland)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:electricity%20generation%20in%20new%20zeland)
- electricity generation in New Zealand
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=electricity%20generation%20in%20New%20Zealand)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:electricity%20generation%20in%20New%20Zealand)
- New Zeland power plant
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=New%20Zeland%20power%20plant) - Power plants in New Zealand
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:New%20Zeland%20power%20plant)
- Power plant of New Zealand
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Power%20plant%20of%20New%20Zealand)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Power%20plant%20of%20New%20Zealand)
- Power plants of New Zealand
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Power%20plants%20of%20New%20Zealand)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Power%20plants%20of%20New%20Zealand)
- Powerplants of New Zealand
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Powerplants%20of%20New%20Zealand)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Powerplants%20of%20New%20Zealand)
- power plant in New Zealand
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=power%20plant%20in%20New%20Zealand) - Power plants in New Zealand
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:power%20plant%20in%20New%20Zealand)
- Power plants in New Zealand
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Power%20plants%20in%20New%20Zealand) - Power plants in New Zealand
 - B: [1](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Power%20plants%20in%20New%20Zealand) - Power plants in New Zealand
- Power plant in New Zealand
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Power%20plant%20in%20New%20Zealand) - Power plants in New Zealand
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Power%20plant%20in%20New%20Zealand)
- Power plants in New-Zealand
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Power%20plants%20in%20New-Zealand) - Power plants in New Zealand
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Power%20plants%20in%20New-Zealand)
- Pwer plants in New Zeland
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Pwer%20plants%20in%20New%20Zeland)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Pwer%20plants%20in%20New%20Zeland)


## Sample 3

Page visited: https://commons.wikimedia.org/wiki/File:Swiss_Airbus_A320-214;_HB-IJQ@ZRH;08.06.2013_709bs_(8991628214).jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Swiss_Airbus_A320-214%3B_HB-IJQ%40ZRH%3B08.06.2013_709bs_%288991628214%29.jpg/120px-Swiss_Airbus_A320-214%3B_HB-IJQ%40ZRH%3B08.06.2013_709bs_%288991628214%29.jpg)

**Actual categories:**
- https://commons.wikimedia.org/wiki/Category:Aircraft_of_Swiss_International_Air_Lines (only reasonable one, others probably too specific)
- https://commons.wikimedia.org/wiki/Category:HB-IJQ_(aircraft) 
- https://commons.wikimedia.org/wiki/Category:Airbus_A320_of_Swiss_International_Air_Lines_at_Zurich_International_Airport - https://commons.wikimedia.org/wiki/Category:2013_at_Zurich_International_Airport
- Category:Airbus aircraft (Swiss International Air Lines) found by Method A
- Category:Airbus A320 (Swiss International Air Lines) found by Method A

**Guessed categories:**
- Swiss plane
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Swiss%20plane)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Swiss%20plane)
- Swiss airplane
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Swiss%20airplane)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Swiss%20airplane)
- Swiss airbus
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Swiss%20airbus) - Category:Airbus aircraft (Swiss International Air Lines), Category:Airbus A320 (Swiss International Air Lines)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Swiss%20airbus)
- Airbus Swiss
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Airbus%20Swiss) - Category:Airbus aircraft (Swiss International Air Lines), Category:Airbus A320 (Swiss International Air Lines)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Airbus%20Swiss)
- airbus swiss
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=airbus%20swiss) - Category:Airbus aircraft (Swiss International Air Lines), Category:Airbus A320 (Swiss International Air Lines)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:airbus%20swiss)
- airbus A320 swiss
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=airbus A320 swiss) - Category:Airbus aircraft (Swiss International Air Lines), Category:Airbus A320 (Swiss International Air Lines)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:airbus%20A320%20swiss)



## Sample 4

Searching for Yōichi Masuzoe, a Japanese politician

- masuzoe (says `No categories matching masuzoe found`)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Yoichi_Masuzoe

**Guessed category:**
- masuzoe 
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=masuzoe) - Category:Yoichi Masuzoe
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:masuzoe)

## Sample 5

https://commons.wikimedia.org/wiki/File:Flowers_at_Tokyo_embassy_after_Paris_Attacks.jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flowers_at_Tokyo_embassy_after_Paris_Attacks.jpg/120px-Flowers_at_Tokyo_embassy_after_Paris_Attacks.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Embassy_of_France_in_Tokyo

**Guessed categories:**
- French embassy in Tokyo
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=French%20embassy%20in%20Tokyo) - Category:Embassy of France in Tokyo
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:French%20embassy%20in%20Tokyo)
- French embassy in Japan
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=French%20embassy%20in%20Japan) - Category:Embassy of France in Tokyo
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:French%20embassy%20in%20Japan)
- Embassy of France in Tokyo
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Embassy%20of%20France%20in%20Tokyo) - Category:Embassy of France in Tokyo
 - B: [1](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Embassy%20of%20France%20in%20Tokyo) - Category:Embassy of France in Tokyo
- Embassy of France in Japan
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Embassy%20of%20France%20in%20Japan) - Category:Embassy of France in Tokyo
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Embassy%20of%20France%20in%20Japan)



## Sample 6

Page visited: https://commons.wikimedia.org/wiki/File:Chinawal-Savkheda_road.jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Chinawal-Savkheda_road.jpg/90px-Chinawal-Savkheda_road.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Roads_in_Chinawal

**Guessed categories:**
- Road in India
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Road%20in%20India)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Road%20in%20India)
- Rural roads
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Rural%20roads)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Rural%20roads)
- Dirt road in Chinawal
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Dirt%20road%20in%20Chinawal)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Dirt%20road%20in%20Chinawal)
- road of Chinawal-Savkheda
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=road%20of%20Chinawal-Savkheda)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:road%20of%20Chinawal-Savkheda)



## Sample 7

Page visited: https://commons.wikimedia.org/wiki/File:Glacial_lake_of_Pe%C3%B1alara.jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Glacial_lake_of_Pe%C3%B1alara.jpg/120px-Glacial_lake_of_Pe%C3%B1alara.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Panoramics_of_Sierra_de_Guadarrama
- https://commons.wikimedia.org/wiki/Category:Laguna_Grande_de_Pe%C3%B1alara
- https://commons.wikimedia.org/wiki/Category:Frozen_lakes_of_Spain
- https://commons.wikimedia.org/wiki/Category:Snow_in_the_Community_of_Madrid
- Category:Mountain lakes found by Method A and B

**Guessed categories:**
- Penalara lake
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Penalara%20lake) - Category:Laguna Grande de Pe\u00f1alara
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Penalara%20lake)
- mountain lakes
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=mountain%20lakes) - Category:Mountain lakes
 - B: [1](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:mountain%20lakes) - Category:Mountain lakes
- mountain lake in winter
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=mountain%20lake%20in%20winter)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:mountain%20lake%20in%20winter)
- Spanish lakes in winter
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Spanish%20lakes%20in%20winter)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:mountain%20lake%20in%20winter)


## Sample 8

Page visited: https://commons.wikimedia.org/wiki/File:Baba_Vida_E8.JPG

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Baba_Vida_E8.JPG/120px-Baba_Vida_E8.JPG)

**Actual category:**  
- https://commons.wikimedia.org/wiki/Category:Baba_Vida_Fortress
- https://commons.wikimedia.org/wiki/Category:Baba_Vida_towers
- Category:Fortresses in Bulgaria found by Method A

**Guessed categories:**
- Baba Vida fortress
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Baba%20Vida%20fortress) - Category:Baba Vida Fortress, Category:Baba Vida towers
 - B: [1](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Baba%20Vida%20fortress) - Category:Baba_Vida_Fortress
- Baba Vida architecture
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Baba%20Vida%20architecture)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Baba%20Vida%20architecture)
- Old buildings in Bulgaria
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Old%20buildings%20in%20Bulgaria) 
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Old%20buildings%20in%20Bulgaria)
- Bulgaria fortresses 
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Bulgaria%20fortresses) - Category:Fortresses in Bulgaria
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Bulgaria%20fortresses)



## Sample 9

Page visited: https://commons.wikimedia.org/wiki/File:Rail_Warehouse_-_geograph.org.uk_-_142978.jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Rail_Warehouse_-_geograph.org.uk_-_142978.jpg/120px-Rail_Warehouse_-_geograph.org.uk_-_142978.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Hitchin
- https://commons.wikimedia.org/wiki/Category:Warehouses_in_England
- https://commons.wikimedia.org/wiki/Category:Railway_related_road_vehicles_of_Great_Britain

**Guessed categories:**
- Rail warehouse
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Rail%20warehouse)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Rail%20warehouse)
- Rail warehouses in UK
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Rail%20warehouses%20in%20UK)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Rail%20warehouses%20in%20UK)
- Victorian rail warehouse
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Victorian%20rail%20warehouse)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Victorian%20rail%20warehouse)
- Network Rail warehouse
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Network%20Rail%20warehouse)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Network%20Rail%20warehouse)


## Sample 10

Page visited: https://commons.wikimedia.org/wiki/File:Sacred_Heart_Monument_02.jpg

![](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Sacred_Heart_Monument_02.jpg/120px-Sacred_Heart_Monument_02.jpg)

**Actual category:**
- https://commons.wikimedia.org/wiki/Category:Pila,_Laguna
- https://commons.wikimedia.org/wiki/Category:Philippine_Cultural_Heritage_Mapping_Project_content
- Category:Cultural heritage monuments in Pi\u0142a found by Method A
- Category:Monuments in the Philippines found by Method A
- Category:Cultural heritage monuments in the Philippines by region found by Method A

**Guessed categories:**
- Sacred Heart monument 
 - A: [0](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Sacred%20Heart%20monument)
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Sacred%20Heart%20monument)
- Monuments in Pila
 - A: [1](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Monuments%20in%20Pila) - Category:Cultural heritage monuments in Pi\u0142a
 - B: [0](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Monuments%20in%20Pila)
- Monuments in the Philippines
 - A: [2](https://commons.wikimedia.org/w/api.php?action=query&list=search&srwhat=text&srenablerewrites=1&srnamespace=14&srlimit=10&srsearch=Monuments%20in%20the%20Philippines) - Category:Monuments in the Philippines, Category:Cultural heritage monuments in the Philippines by region, 
 - B: [1](https://commons.wikimedia.org/w/api.php?action=opensearch&format=jsonfm&limit=10&suggest=1&search=Category:Monuments%20in%20the%20Philippines) - Category:Monuments in the Philippines