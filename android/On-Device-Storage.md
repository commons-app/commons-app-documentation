Account credentials are encapsulated in an account provider. Currently only one Wikimedia Commons account is supported at a time. (Question: what is the actual storage for credentials?)

Preferences are stored in Android's SharedPreferences.

Information about past and pending uploads is stored in the Contributions content provider, which uses an SQLite database on the backend.

A list of recently-used categories is stored in the Categories content provider, which uses an SQLite database on the backend.

Captured files are not currently stored within the app, but are passed by content: or file: URI from other apps.

Thumbnail images are not currently cached.