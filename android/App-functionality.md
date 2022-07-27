# App functionality

The Wikimedia Commons app offers the following functionality:

## In-App functionality

### User facing

- Show Tutorial
- Sign up to Commons
- Log in to Commons
- Show recent uploads
- Show upload / image
    - Share (=> external app)
    - Overflow
        - View in Browser
        - Download
- Show nearby places
    - Show as list
    - Show on map
    - Refresh
    - Show Place Details
        - Get directions (=> external app)
        - Commons Article (=> external browser)
        - Wikidata item ([See edits](https://quarry.wmflabs.org/query/29196))
- Select Picture from Gallery
- Select Picture from Camera
- Set data for Picture
    - title + description (Text)
    - licence (Dropdown)
    - "Use previous Title/Description"
- Check if picture already exists on Commons 
("This file already exists on Commons. Are you sure you want to proceed?")
- Upload Picture
- Suggest Category: Based on [1) image location or 2) user location](https://github.com/commons-app/commons-app-documentation/blob/master/android/Location-based-category-search.md)
- Search for Category: [prefix and fuzzy search](https://github.com/commons-app/commons-app-documentation/blob/master/android/Fuzzy-category-search.md)
- Save chosen Category
- Settings
    - Enable/disable functionality
        - Automatically get current location for category suggestions (Yes/No)
        - Night Mode (Yes/No)
        - Use Wikidata (Yes/No)
    - Configure settings
        - Default Licence (Dropdown)
        - "Set Recent upload Limit" (Number)
    - Become a Beta Tester (=> external browser)
- Send feedback to developers (=> external app)
- Logout from Commons

### Background

- Queueing of uploads and "changes", asynchronuos sync TODO
- Caching of retrieved data TODO
- Logging of Events to Wikimedia

## External functionality

- Adds logged in Commons account to Android -> Settings -> Accounts
- Adds "Share Intent" for images that accepts images into the Commons app

