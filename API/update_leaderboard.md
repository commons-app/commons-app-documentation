# Update Leaderboard API

This API is used to update a leaderboard user data.

## Base URL
`https://tools.wmflabs.org/commons-android-app/tool-commons-android-app`

## Endpoint
`/update_leaderboard.py`

## Request Type
`GET`

## Response Type
`JSON`

## Required Parameters

- **user** - This is username of the user, for example **Syced** (if username has **whitespaces** then replace them with `_` )


## Example Request

```
curl --location --request GET 'https://commons-android-app.toolforge.org/tool-commons-android-app/update_leaderboard.py?user=Syced'
```

## Example Responses

```
{
    "status": "200",
    "message": "Data Updated",
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