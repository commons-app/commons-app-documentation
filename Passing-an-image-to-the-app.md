Developers who wish to pass an image from their app to the Wikimedia Commons app can do so using an Intent, just like you would with any other app.

```java
public void shareImage() {
    Uri imageUri = // your image uri
        
    Intent shareIntent = new Intent();
    shareintent.setAction(Intent.ACTION_SEND);
    shareIntent.setType("image/*");
    shareIntent.putExtra(Intent.EXTRA_STREAM, imageUri);
    startActivity(Intent.createChooser(shareIntent, "Send Image To"));
}
```

Developers can also add pass along a title and description with the image, which is highly recommended for the best user experience.

```
private static final String INTENT_TITLE_KEY = "title";
private static final String INTENT_DESCRIPTION_KEY = "description";

public void shareImage() {
    Uri imageUri = // your image uri

    String imageTitle = ""; // The title of the image you want to share
    String imageDescription = ""; // A short description of the image you want to share

    Intent shareIntent = new Intent();
    shareintent.setAction(Intent.ACTION_SEND);
    shareIntent.setType("image/*");
    shareIntent.putExtra(Intent.EXTRA_STREAM, imageUri);
    shareIntent.putExtra(INTENT_TITLE_KEY, imageTitle);
    shareIntent.putExtra(INTENT_DESCRIPTION_KEY, imageDescription);
    startActivity(Intent.createChooser(shareIntent, "Send Image To"));
}
```

A sample Android application (written in Kotlin) demonstrating this functionality can be found in the [commons-app/commons-intent-client-sample](https://github.com/commons-app/commons-intent-client-sample) repository.
