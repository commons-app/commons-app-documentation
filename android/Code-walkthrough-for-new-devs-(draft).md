# Code walkthrough for new devs (draft)

Note: This is only a draft taken from personal notes, please feel free to improve

### Share: Incoming Intent

Commons registers for android.intent.action.SEND and android.intent.action.SEND_MULTIPLE intents from other apps.  The former launches ShareActivity.java and the latter launches MultipleShareActivity.java .

### "My recent Uploads"

ContributionsListFragment.java is the part of the main screen where you can click the camera button, or gallery button, etc., and where the 'Waiting for first sync' shows up.

### Viewing Pictures

ContributionsListActivity.java is the parent activity of that fragment, which has the title 'My uploads' and displays the list of contributions. MediaDetailPagerFragment.java replaces part of this screen when a contribution is selected, and downloads that particular pic and displays the pic information. It's a ViewPager, that lets users flip left and right between their contributions. It downloads the image file to be displayed to the user and has the menu options to view in browser, download, share, etc.

In its getItem() method, MediaDetailPagerFragment.java calls the forMedia() static method of MediaDetailFragment.java. forMedia() instantiates a new MediaDetailFragment object. MediaDetailFragment.java handles the details pane being scrolled up to display the image Title, Description, License, and Categories

### Uploading Picture

In ContributionsListFragment.java, after selecting gallery, it calls startGalleryPick method of ContributionController.java (the regenerateImageCapturedUri is only if camera button is selected). The handleImagePicked() method of ContributionController is called later in ContributionsListFragment, in its onActivityResult() method (which is the response received after starting an activity with startActivityForResults()).

Must select pic first, then only you are brought to "Upload to Commons" screen to enter title and desc. ContributionController.java starts a new explicit intent that calls ShareActivity.java .

In ShareActivity.java, a new UploadController is created, and sends an intent to start UploadService.java . SingleUploadFragment.java contains the title/desc fields and license info.

The startUpload() method of UploadController is called, which produces the toast 'Upload started!' and calls showPostUpload(). showPostUpload() calls CategorizationFragment.java fragment and initiates a transaction with it. This fragment replaces the single_upload_fragment_container in activity_share.xml .

MediaDetailFragment.java is where the image info for the background is handled
MediaDataExtractor.java seems to be where they 'Fetch additional media data from the network that we don't store locally.This includes things like category lists'

SingleUploadFragment.java is the title/desc input screen. Also called by ShareActivity.java

### Categories

CategoryContentProvider - manages private storage for recently used categories. Category.java is the item that stores the table of ContentValues that have 'category name', 'last used' and 'times used'. 

In Category.save(), ContentProvider.update() vs insert()  - update replaces the column_name/value pairs for the record (row) specified in selection, whereas insert inserts a new row

Within CategorizationFragment:

- Class CategoryItem shows the name of the possible category and whether it is selected or not. These will be shown in a ListView
- Class CategoryUpdater gets the categories 'filter', which is the text that user inputs to find a category. Then it starts a worker thread in the doInBackground() method. doInBackground() searches all fields if the category search is empty, whereas if categoriesCache hashmap contains the search string, it gets the value of the mapping with the specified key

MediaDataExtractor.java seems to be where they 'Fetch additional media data from the network that we don't store locally.This includes things like category lists'.
