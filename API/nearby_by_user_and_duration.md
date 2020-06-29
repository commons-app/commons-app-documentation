# Nearby Edits by a User API

This API is used to check if a username is valid or not.

## Base URL
`https://tools.wmflabs.org/commons-android-app/tool-commons-android-app`

## Endpoint
`/nearby_by_user_and_duration.py`

## Request Type
`GET`

## Response Type
`JSON`

## Required Parameters

- **user** - This is username of the user, for example **Syced** (if username has **whitespaces** then replace them with `_` )


## Example Request

```
curl --location --request GET 'https://tools.wmflabs.org/commons-android-app/tool-commons-android-app/nearby_by_user_and_duration.py?user=Syced'
```

## Example Responses

```
{
    "status": "200",
    "data": {
        "yearly": 27,
        "weekly": 0,
        "all_time": 126
    },
    "user": "Syced"
}
```

**Note: Returns 0 if username is invalid**
```
{
    "status": "200",
    "data": {
        "yearly": 0,
        "weekly": 0,
        "all_time": 0
    },
    "user": "asdasdad1a5sd1a61s5d1a"
}
```