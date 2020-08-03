# Update Leaderboard Avatar API

This API is used to check if a username is valid or not.

## Base URL
`https://tools.wmflabs.org/commons-android-app/tool-commons-android-app`

## Endpoint
`/update_avatar.py`

## Request Type
`GET`

## Response Type
`JSON`

## Required Parameters

- **user** - This is username of the user, for example **Syced** (if username has **whitespaces** then replace them with `_` )

- **avatar** - This is url of the avatar to set, for example **https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png**


## Example Request

```
curl --location --request GET 'https://commons-android-app.toolforge.org/tool-commons-android-app/update_avatar.py?user=Syced&avatar=https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png'
```

## Example Responses

```
{
    "status": "200",
    "message": "Avatar Updated",
    "user": "Syced"
}
```

**Note: Returns error if params are invalid**
```
{
    "status": "400",
    "message": "Invalid Parameters",
    "user": null
}
```