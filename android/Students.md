# Introduction

[GSoC](https://summerofcode.withgoogle.com) is a coding program organized by Google.

The [Commons app](https://play.google.com/store/apps/details?id=fr.free.nrw.commons) is an open source Android app that allows anyone to upload pictures to Wikimedia Commons (the image repository used by Wikipedia, Wikinews and other projects).

# How to apply

In the candidate selection phase of GSoC, we ask you (the student) to learn about the project by performing these tasks (in this order):

1. Compile and run the app as described in [the documentation](https://github.com/commons-app/commons-app-documentation/blob/master/android/Quick-start-guide-for-Developers.md#quick-start-guide-for-developers).
2. Review 1 existing pull request:
    1. Go to https://github.com/commons-app/apps-android-commons/pulls and find a pull request that does **not** contain the words "Review by student".
    2. Go to the page of the original issue. The original issue should be mentioned at the top of the pull request, for instance "_Fixes #xyz_". If the pull request does not mention any issue, please add a comment on the pull request asking for a link to the original issue, and choose a different pull request.
    3. Try to reproduce the original issue. Once you have managed to reproduce it, take a video of the issue reproduction (to make a screencast on Android you can use [adb](https://stackoverflow.com/questions/28217333/how-to-record-android-devices-screen-on-android-version-below-4-4-kitkat) or [this button](https://support.google.com/android/answer/9075928) or any other screencast app that works for you). Keep the resulting video file, you will use it later.
    3. Go back to the source code of the app, and perform a `git pull` to make sure you are at the latest master. Now create a new branch and _pull_ the pull request, for instance: `git checkout -b pr1 master; git pull https://github.com/person-who-wrote-the-pr/apps-android-commons.git pr1` (replace `person-who-wrote-the-pr` with the username of the person who wrote the pull request, and `pr1` with the name of the branch of the pull request). Compile and run. If the pull request really solves the issue, then the issue should not happen now. Take a video showing that.
    4. On the pull request page, add a comment containing:
        - These exact words: "Review by student"
        - Post the two videos (before merging the pull request showing the issue, after merging the pull request)
        - Say whether the issue was solved after merging the pull request or not.
3. Fix 1 bug by following the instructions at the "Developers" section [here](https://github.com/commons-app/commons-app-documentation/blob/master/android/Volunteers-welcome!.md#developers).
4. Write and submit a proposal on Phabricator. Please note that it must contain a link to your review and your bug fix. Example proposal from last year: https://phabricator.wikimedia.org/T248341
5. Post an email to [the mailing list](mailto:commons-app-android@googlegroups.com) with a link to your proposal, and ask for early feedback about it.
6. (Optionally, you can fix more bugs)
7. (Optionally, after 5 bugfixes, you can also work on enhancements)

# Proposal ideas

It can be hard to estimate difficulty, so we have selected a few ideas that we think are not too simple, not too difficult:
- Edit already uploaded pictures: Edit title/description, add depictions, maybe even add coordinates.
- Improve Nearby by splotting from one big server request to a first fast server requests then an asynchronous request for each item.
- In the upload feature, add an activity to crop/blur pictures for privacy purposes (example usages: crop out a passer-by, blur a car's number plate).

# How we choose

We choose the student based on:
- Technical challengingness of merged bugfix(es).
- Quality of code.
- Efficiency and smoothness of interactions on GitHub.
- Ability to read documentation and find solutions independently.
- Extra points for helping others, previous open source project participation, etc.
