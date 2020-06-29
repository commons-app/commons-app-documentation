# Username Exists Check API

This API is used to check if a username is valid or not.

## Base URL
`https://tools.wmflabs.org/commons-android-app/tool-commons-android-app`

## Endpoint
`/username_exists.py`

## Request Type
`GET`

## Response Type
`JSON`

## Required Parameters

- **user** - This is username of the user, for example **Syced** (if username has **whitespaces** then replace them with `_` )


## Example Request

```
curl --location --request GET 'https://tools.wmflabs.org/commons-android-app/tool-commons-android-app/username_exists.py?user=Syced'
```

## Example Responses

```
{
    "status": "200",
    "user": "Syced",
    "exists": true
}
```

```
{
    "status": "200",
    "user": "asdasdad1a5sd1a61s5d1a",
    "exists": false
}
```