# June 2018 incident - upload-time geotagging

**Summary:** <!-- to be written -->

## Background

Wikimedia Commons Android app allows users to share pictures from Android devices to Wikimedia Commons. One of its feature is geotagging - with this enabled, file pages created via the app contain location information, enabling re-users to find photos based on location, for example.

There are two timings when location information was obtained and used: when the photo was taken and when it was shared to Wikimedia Commons.  The latter is primarily used for [location-based category search](https://github.com/commons-app/apps-android-commons/wiki/Location-based-category-search) when the photo is not already geotagged, and it needed to be explicitly set on the Settings screen of the app to be activated.

## Response

* Initial analysis of affected files and users - done
* Emergency fix of the app to explicitly explains how upload-time geotagging works - done
* Redacting location information which is likely to be published unexpectedly from publicly visible pages - on-going
* Notifying the affected users of the issue and ask to review preferences - to be done

## Timeline

* 2018-06-06: The incident was reported at one of Wikimedia Commons' community noticeboards. ([link](https://commons.wikimedia.org/wiki/Commons:Village_pump#Warning!_Mobile_uploads_are_getting_the_wrong_location!), [permalink](https://commons.wikimedia.org/w/index.php?title=Commons:Village_pump&oldid=305139407#Warning!_Mobile_uploads_are_getting_the_wrong_location!)) The report said that a user of the Wikimedia Commons Android app uploaded a picture and the file page the app created contained the location information of the place where it was uploaded, not it was photographed. The user did not expect the location information to be published.

  * It was discovered that a label in the app's preferences misrepresented a feature of the app that retrieves and publishes location information when uploading a picture. The label said _"Automatically get current location - Retrieve current location to offer category suggestions if image is not geotagged"_, while the app additionally published the current location of the device as part of the file page it creates.
  * Subsequently the maintainer of the app and some of the Wikimedia Commons users with privileged access were made aware of the incident and discussed responses.

* 2018-06-08: A data collection started to find the applicable file pages that need to be redacted.
* 2018-06-11: A new beta version of the app was released for emergency fix. It now explicitly stated that upload-time location information will be published when the user enabled the upload-time geotagging.

## FAQ

* **Q** I allow my camera to embed GPS information to photos. Does this mean I was affected of this incident?
  * **A** No, if the photo contained GPS information in it, that is the only location information the app published. The upload-time geotagging was not activated in that case.
* **Q** I have never enabled the "Automatically get current location" preference. Does this incident affect me?
  * **A** No, this preference is disabled by default. If you have never enabled it, your current coordinates will not have been retrieved.