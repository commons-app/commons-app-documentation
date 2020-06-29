# Leaderboard DB Schema

## Access Database and Schema
This database is available at `https://toolsadmin.wikimedia.org/tools/id/commons-android-app`

- You need to first generate a SSH public and private key and then add it to your tools account.

After that run the following commands

- ```$ eval `ssh-agent -s` ```

- `$ ssh-add key` where key is the name of your private key

- `$ ssh username@tools-login.wmflabs.org` where username is your username

  ![tools-screenshot](images/tools-screenshot.png)

- `$ become commons-android-app`

- `$ sql tools`

- `$ use s53794__leaderboard` where **s53794__leaderboard** is the name of database

- `> show tables;`

  ![show-tables](images/show-tables.png)

- `> desc leaderboard_user;`

- `> desc leaderboard_used;`

- `> desc leaderboard_upload;`

- `> desc leaderboard_nearby;`

  ![desc-tables](images/desc-tables.png)

## Create Database

```
$ sql tools

> CREATE DATABASE CREDENTIALUSER__DBNAME;

```

For Example

```
> CREATE DATABASE s53794__leaderboard;
```
Note: make sure to use `__` double underscore


## To Create Tables Run a SQL file like

```
mysql -u root -p --no-data dbname > create_leaderboard_tables.sql
```
