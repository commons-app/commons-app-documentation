# Leaderboard API

This API is used to fetch leaderboard list and add a new user to leaderboard if does not exists.

## Base URL
`https://tools.wmflabs.org/commons-android-app/tool-commons-android-app`

## Endpoint
`/leaderboard.py`

## Request Type
`GET`

## Response Type
`JSON`

## Required Parameters

- **user** - This is username of the user, for example **Syced** (if username has **whitespaces** then replace them with `_` )

- **duration** - Can be **all_time** or **weekly** or **yearly**

- **category** - Can be **upload** or **used** or **nearby**

Note: If username is not already added to leaderboard then it would be added in the first request and this request may take extra time to generate response.

## Optional Paramaters

- **avatar** - This should be only used if a new user needs to be added to the leaderboard and wants a custom avatar, should be just the file name from `https://commons.wikimedia.org/wiki/File:` For example: **User-avatar_Dark.png** If no **avatar** is supplied then default one would be used i.e. **Gnome-stock_person.svg**

- **limit** - This is the limit for the number of results and should be passed along with offset, for example **5**

- **offset** - This is the offset for the results and should be passed along with limit, for example **1**

## Example Request

```
curl --location --request GET 'https://tools.wmflabs.org/commons-android-app/tool-commons-android-app/leaderboard.py?user=Syced&duration=all_time&category=used'
```

## Example Response

```
{
    "status": 200,
    "username": "Syced",
    "category_count": 462,
    "limit": null,
    "avatar": "Gnome-stock_person.svg",
    "offset": null,
    "duration": "all_time",
    "leaderboard_list": [
        {
            "username": "Fæ",
            "category_count": 107147,
            "avatar": "Gnome-stock_person.svg",
            "rank": 1
        },
        {
            "username": "JAn Dudík",
            "category_count": 912,
            "avatar": "Gnome-stock_person.svg",
            "rank": 2
        },
        {
            "username": "Vojtěch Dostál",
            "category_count": 749,
            "avatar": "Gnome-stock_person.svg",
            "rank": 3
        },
        {
            "username": "Syced",
            "category_count": 462,
            "avatar": "Gnome-stock_person.svg",
            "rank": 4
        },
        {
            "username": "Misaochan",
            "category_count": 101,
            "avatar": "Gnome-stock_person.svg",
            "rank": 5
        },
        {
            "username": "Kookaburra 81",
            "category_count": 41,
            "avatar": "Gnome-stock_person.svg",
            "rank": 6
        },
        {
            "username": "Madhurgupta10",
            "category_count": 1,
            "avatar": "Gnome-stock_person.svg",
            "rank": 7
        },
        {
            "username": "Macgills2",
            "category_count": 1,
            "avatar": "Gnome-stock_person.svg",
            "rank": 8
        }
    ],
    "category": "used",
    "rank": 4
}
```

## Example Error Responses

**Missing Parameters**
```
{
    "status": "400",
    "message": "Invalid Parameters",
    "user": null
}
```

**Invalid Username**
```
{
    "status": "500",
    "message": "Internal Server Error",
    "user": "asdasdad1a5sd1a61s5d1a"
}
```