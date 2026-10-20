# Supported Media Types

The Commons Android app currently provides image pickers only.

There are two ways to choose an image:

- **From Gallery** opens the Android system picker. The app supplies a list of image MIME types for the picker to filter.
- **Custom Selector** opens the in-app picker. It reads images from Android's `MediaStore.Images` and filters them by filename extension.

The formats below describe what each picker is configured to show; they do not guarantee that Commons will accept or successfully upload every file.

| Format | From Gallery | Custom Selector | Notes |
| --- | --- | --- | --- |
| JPEG (`.jpg`, `.jpeg`) | MIME types include `image/jpg` and `image/jpeg` | Extensions `.jpg` and `.jpeg` are listed | In-app editing is available only for JPEG files. |
| PNG (`.png`) | MIME type `image/png` is listed | Extension `.png` is listed | |
| GIF (`.gif`) | MIME type `image/gif` is listed | Extension `.gif` is listed | |
| TIFF (`.tiff`, `.tif`) | MIME type `image/tiff` is listed | `.tiff` is listed; `.tif` is not | |
| WebP (`.webp`) | MIME type `image/webp` is listed | Extension `.webp` is listed | |
| XCF (`.xcf`) | MIME type `image/xcf` is listed | Extension `.xcf` is listed | |
| SVG (`.svg`) | MIME type `image/svg+xml` is listed | Extension `.svg` is listed | |
| HEIC/HEIF (`.heic`, `.heif`) | MIME types `image/heic` and `image/heif` are listed | Not listed | Converted to JPEG (Android 9+). See below. |

## HEIC/HEIF conversion

The app converts HEIC/HEIF files to JPEG on Android 9 (API 28) or later and copies EXIF metadata. On older Android versions, conversion throws an error. The app warns that the original format is not supported by the Commons server and was converted to JPG.

## Selection and upload limits

- The Custom Selector allows up to 20 images per upload, or one image when opened in single-selection mode. Nearby uses single selection.
- From Gallery allows multiple images from the Contributions screen. Nearby opens it without multi-selection.
- No client-side file-size limit was found in the upload path. The app sends uploads in 512 KB chunks. Commons' [maximum file size rules](https://commons.wikimedia.org/wiki/Commons:Maximum_file_size) describe a 5 GiB limit for chunked uploads and a usual 100 MiB limit for other uploads.
- Commons' [file-type rules](https://commons.wikimedia.org/wiki/Commons:File_types) determine which formats it accepts. A file appearing in a picker does not guarantee that Commons will accept it.

## Not yet covered

This page describes what the app's pickers and upload code are configured to do. The following have not been tested on a device and are not covered here:

- Whether GIF, TIFF, WebP and XCF files upload successfully
- Whether `.tif` files appear in From Gallery
- What happens when more than 20 images are selected in From Gallery
- Whether a HEIC/HEIF file converted to JPEG can be edited in the app
- The largest file the app can actually upload
- Audio and video are not offered for upload in the app, even though Wikimedia Commons accepts some audio and video formats.

For related discussion of file-type validation, see [#6651](https://github.com/commons-app/apps-android-commons/issues/6651).

## For contributors

The system picker MIME list and picker launch flow are in `filepicker/FilePicker.kt` (`FilePicker`). The Custom Selector queries `MediaStore.Images` and applies its extension filter in `customselector/ui/selector/ImageFileLoader.kt` (`ImageFileLoader`). HEIC/HEIF conversion is in `filepicker/PickedFiles.kt` (`PickedFiles`); it writes JPEG at quality 95 and copies EXIF metadata. The Custom Selector limit is `CustomSelectorConstants.MAX_IMAGE_COUNT`. Upload chunking is in `upload/UploadClient.kt` (`UploadClient`).

Code-reading observations, not device-tested: the system-picker list uses `image/xcf`, a non-standard MIME type; `PickedFiles.getMimeType` falls back to a `.jpg` extension when it cannot determine an extension. Neither observation demonstrates that a file uploads successfully. No additional client-side format whitelist was found between picker selection and `UploadClient`.

**Last verified against app version 6.8.0** (the version name in `app/build.gradle.kts`). Upload behavior on a device has not been tested; see [Not yet covered](#not-yet-covered).
