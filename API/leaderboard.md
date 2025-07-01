# Wikimedia Commons Android App Leaderboard API

This API retrieves the leaderboard for the Wikimedia Commons Android App and allows adding a new user to the leaderboard if they do not already exist.

## Base URL
[https://tools.wmflabs.org/commons-android-app/tool-commons-android-app](https://tools.wmflabs.org/commons-android-app/tool-commons-android-app)
## Endpoint
`/leaderboard.py`

## Request Method
`GET`

## Response Format
`JSON`

## Required Parameters
The following parameters must be included in every request:

| Parameter  | Description                                                                 | Valid Values                     |
|------------|-----------------------------------------------------------------------------|----------------------------------|
| `user`     | The username of the user. Replace any spaces in the username with underscores (`_`). | Example: `Syced`                 |
| `duration` | The time period for the leaderboard data.                                   | `all_time`, `weekly`, `yearly`   |
| `category` | The type of contribution to rank.                                           | `upload`, `used`, `nearby`       |

**Note**: If the specified `user` is not already on the leaderboard, they will be added during the first request. This process may cause a slight delay in the response.

## Optional Parameters
The following parameters are optional and can be included as needed:

| Parameter  | Description                                                                 | Default Value                                                                 |
|------------|-----------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| `avatar`   | A custom image URL for the user’s avatar. Only used when adding a new user to the leaderboard. | [https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png) |
| `limit`    | The maximum number of leaderboard entries to return. Must be used with `offset`. | None                                                                          |
| `offset`   | The starting point for the leaderboard entries. Must be used with `limit`.   | None                                                                          |

**Example Avatar URL**: [https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png)

## Example Request
```bash
curl --location --request GET 'https://tools.wmflabs.org/commons-android-app/tool-commons-android-app/leaderboard.py?user=Syced&duration=all_time&category=used'
```

## Example Response
```bash
{
  "status": 200,
  "username": "Syced",
  "category_count": 462,
  "limit": null,
  "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
  "offset": null,
  "duration": "all_time",
  "leaderboard_list": [
    {
      "username": "Fæ",
      "category_count": 107147,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 1
    },
    {
      "username": "JAn_Dudík",
      "category_count": 912,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 2
    },
    {
      "username": "Vojtěch_Dostál",
      "category_count": 749,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 3
    },
    {
      "username": "Syced",
      "category_count": 462,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 4
    },
    {
      "username": "Misaochan",
      "category_count": 101,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 5
    },
    {
      "username": "Kookaburra_81",
      "category_count": 41,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 6
    },
    {
      "username": "Madhurgupta10",
      "category_count": 1,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 7
    },
    {
      "username": "Macgills2",
      "category_count": 1,
      "avatar": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Gnome-stock_person.svg/200px-Gnome-stock_person.svg.png",
      "rank": 8
    }
  ],
  "category": "used",
  "rank": 4
}
```
## Error Responses
The API may return the following error responses:

### Missing Parameters
```bash
{
  "status": 400,
  "message": "Invalid Parameters",
  "user": null
}
```
### Invalid Username
```bash
{
  "status": 500,
  "message": "Internal Server Error",
  "user": "asdasdad1a5sd1a61s5d1a"
}
```
## Notes
- Ensure the `user` parameter replaces spaces with underscores (e.g., `John Doe` becomes `John_Doe`).
- The `avatar` parameter is only applied when a new user is added to the leaderboard. If no avatar is provided, the default avatar URL is used.
- Use the `limit` and `offset` parameters together to paginate leaderboard results.
- For issues or questions, consult the Wikimedia Commons *Help desk* or *Village pump/Technical* at [https://commons.wikimedia.org](https://commons.wikimedia.org).