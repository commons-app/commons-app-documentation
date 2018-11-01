1. Download **Wikimedia Commons** from the [Google Play Store](https://play.google.com/store/apps/details?id=fr.free.nrw.commons)
2. Take a picture of something interesting (see: [What files are OK to upload](https://commons.wikimedia.org/wiki/Commons:Project_scope#Scope_part_1:_Files))
3. In your camera app, click to view the picture you just took
4. Press "Share"
5. Select **Commons**  
   The first time you will need to log in (if you don't have an account, create one for free [here](https://commons.wikimedia.org/w/index.php?title=Special:UserLogin&type=signup))
6. Enter a name and description for the picture
7. Enter as many relevant categories as possible (see: [Categorization tips](https://commons.wikimedia.org/wiki/Commons:Categories#Categorization_tips))
8. Press **Save**

# Geotagging (adding location data to pictures)

Pictures with geolocation data are much more valuable, so please:

- Enable **geotagging** in your camera app (often labelled: *GPS (tags)*, *Location (tags)*, or *save location* and with an icon of a map pin marker)
- To improve location accuracy, before taking pictures launch the free [GPS Locker](https://play.google.com/store/apps/details?id=com.silentlexx.gpslock) app.
- You can use an app such as [PhotoMap](https://play.google.com/store/apps/details?id=eu.bischofs.photomap) to check whether the pictures you take are correctly geolocalized or not.
- You can manually add or edit the location of your photos using [Geotag Photos Pro](https://play.google.com/store/apps/details?id=com.tappytaps.android.geotagphotospro2).

# Need to be anonymous?

Pictures you upload may lead to your identity. Let's say you live under a dictatorship and take a picture revealing leaders corruption: you want to upload the picture to Commons but you probably do not want to be identified as the photographer or as the uploader. Below are a few steps you can take to reduce the risks of being identified, but remember that zero risk does not exist.

- Use a VPN
- Create a throwaway Wikimedia account without an email address, and only use it for that picture or set of pictures. Then afterwards avoid modifying these pictures with your usual account.
- Remove the EXIF from your picture. Only a few persons on Earth use the same camera model, same firmware version, same settings as you, and all of this information is available in the EXIF, making it easy to link from this picture to your other pictures. The application [Scrambled Exif](https://gitlab.com/juanitobananas/scrambled-exif) ([F-Droid](https://f-droid.org/en/packages/com.jarsilio.android.scrambledeggsif/), [Google Play](https://play.google.com/store/apps/details?id=com.jarsilio.android.scrambledeggsif)) makes the process easy.
- Even lens/camera imperfections might theoretically allow a very motivated organization to match your pictures.

# Fixing errors in Nearby

Nearby is a fantastic way to find interesting places. But imagine that go to the place pinned on the map, and it is not at all what was expected? In such cases, fixing the problem is very important, and you can do it easily! It will benefit not only Commons but also all other Wikimedia projects and in particular Wikipedia. Here is how to proceed:

## Obsolete
**Scenario**: Yes there used to be a castle here, but now there is absolutely nothing left, maybe it is just green fields or a factory or recent houses. There is not even a plaque indicating that there used to be a castle.

**How to fix it**: Go to www.wikidata.org in your browser, and search for the item in the search bar. At the Wikidata item page, click on "Add statement", type "ended" property and select the "ended" property that appears. In the field that appears, enter the date at which the item disappeared, or just set it to "unknown" if you don't know when that happened. Finally, press "Publish".

![](https://upload.wikimedia.org/wikipedia/commons/c/c1/Wikidata_screenshot_-_Add_statement.png)
![](https://upload.wikimedia.org/wikipedia/commons/5/5c/Wikidata_screenshot_-_select_%22ended%22_property.png)
![](https://upload.wikimedia.org/wikipedia/commons/5/5f/Wikidata_screenshot_-_date.png)
![](https://upload.wikimedia.org/wikipedia/commons/1/1c/Wikidata_screenshot_-_unknown_value.png)
![](https://upload.wikimedia.org/wikipedia/commons/0/0c/Wikidata_screenshot_-_custom-no-unknown_value_menu.png)

## Wrong coordinates
**Scenario**: The pin shows the "Bodleian Library" here, but actually you know this library it is at a different place, maybe 10 meters across the street or even a few kilometers away. Make sure your GPS is correct, and double-check locations.

**How to fix it**: Go to www.wikidata.org in your browser, and search for the item in the search bar. At the Wikidata item page, edit the coordinate location, enter the right location (most latitude/longitude formats are accepted), and remove the reference if there was one. Then go to the talk page and explain why you think this is the real location.

