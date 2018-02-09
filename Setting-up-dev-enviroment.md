Fork the commons repo from github. Now clone this repo to your local machine. Enter the following in terminal (Gitbash for windows users)

```
git clone https://github.com/<your-github-profile-name>/apps-android-commons.git
```

Do `git remote -v`. It will probably show you
```
origin https://github.com/<your-github-profile-name>/apps-android-commons.git (fetch and push)
```

Then add the upstream remote ie. commons repo by using
```
git remote add upstream https://github.com/commons-app/apps-android-commons.git
```

Now `git remote -v` will show 
```
origin https://github.com/<your-github-profile-name>/apps-android-commons.git (fetch and push)

upstream https://github.com/commons-app/apps-android-commons.git (fetch and push)
```
Change to the repository on your local computer 
```
cd <repository-directory>
```
Now, create a branch

```
git checkout -b <branch-name>
```
When you are done making changes, make a commit

```
git commit -m <type-commit-message>
```

To push
```
git push origin <branch_name>
```
Whenever you need to pull 

```
git pull origin <branch_name>
```

To pull from original commons use
```
git pull upstream <branch_name>
```