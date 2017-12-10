Fork the commons repo from github. Now clone this repo to your local machine

```
git clone https://github.com/maskaravivek/apps-android-commons.git
```

Do `git remote -v`. It will probably show you
```
origin https://github.com/maskaravivek/apps-android-commons.git (fetch and push)
```

Then add the upstream remote ie. commons repo by using
```
git remote add upstream https://github.com/commons-app/apps-android-commons.git
```

Now `git remote -v` will show 
```
origin https://github.com/maskaravivek/apps-android-commons.git (fetch and push)
upstream https://github.com/commons-app/apps-android-commons.git (fetch and push)
```

Whenever u need to pull or push to your fork do
```
git push origin <branch_name>
git pull origin <branch_name>
```

To pull from original commons use
```
git pull upstream <branch_name>
```