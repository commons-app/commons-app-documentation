# Introduction

[GSoC](https://summerofcode.withgoogle.com) is a coding program organized by Google.

The [Commons app](https://play.google.com/store/apps/details?id=fr.free.nrw.commons) is an open source Android app that allows anyone to upload pictures to Wikimedia Commons (the image repository used by Wikipedia, Wikinews and other projects).

# How to apply

Thank you for your interest! In the candidate selection phase of GSoC, we ask you (the GSoC candidate) to learn about the project and apply by performing these tasks (in this order):

1. Compile and run the app as described in [the documentation](https://github.com/commons-app/commons-app-documentation/blob/master/android/Quick-start-guide-for-Developers.md#quick-start-guide-for-developers).
2. Fix 1 bug by following the instructions at the "Developers" section [here](https://github.com/commons-app/commons-app-documentation/blob/master/android/Volunteers-welcome!.md#developers). Fixing bugs is a good opportunity to demonstrate that you can work on the app.
3. (_optional but preferred as it demonstrates your attention to details and understanding of git_) Review 1 existing pull request:
    1. Go to https://github.com/commons-app/apps-android-commons/pulls and find a pull request that does **not** contain the words "Review by GSoC applicant".
    2. Go to the page of the original issue. The original issue should be mentioned at the top of the pull request, for instance "_Fixes #xyz_". If the pull request does not mention any issue, please add a comment on the pull request asking for a link to the original issue, and choose a different pull request.
    3. Try to reproduce the original issue. Once you have managed to reproduce it, take a video of the issue reproduction (to make a screencast on Android you can use [adb](https://stackoverflow.com/questions/28217333/how-to-record-android-devices-screen-on-android-version-below-4-4-kitkat) or [this button](https://support.google.com/android/answer/9075928) or any other screencast app that works for you). Keep the resulting video file, you will use it later.
    4. Go back to the source code of the app, and perform a `git pull` to make sure you are at the latest master. Now create a new branch and _pull_ the pull request, for instance: `git checkout -b pr1 master; git pull https://github.com/person-who-wrote-the-pr/apps-android-commons.git pr1` (replace `person-who-wrote-the-pr` with the username of the person who wrote the pull request, and `pr1` with the name of the branch of the pull request). Compile and run. If the pull request really solves the issue, then the issue should not happen now. Take a video showing that.
    5. On the pull request page, add a comment containing:
        - These exact words: "Review by GSoC applicant"
        - Post the two videos (before merging the pull request showing the issue, after merging the pull request)
        - Say whether the issue was solved after merging the pull request or not.
        - Optionally, explain how the source code change could be improved.
4. Choose a task idea (see section below).
5. Create a proposal on Phabricator by following the instructions under ["Submit your proposal as a task on Wikimedia Phabricator"](https://www.mediawiki.org/wiki/Google_Summer_of_Code/Participants#Application_process_steps). You can edit your Phabricator task afterwards, so do not hesitate to first create a draft and then improve it little by little. Examples from previous years: [1](https://phabricator.wikimedia.org/T279266) [2](https://phabricator.wikimedia.org/T248341) [3](https://phabricator.wikimedia.org/T304044). It must include:
    - Link to your bugfix. If you have fixed several bugs, please write the bugfix you are most proud of at the top of the list.
    - Link to the pull request review you have performed (optional).
    - Your relevant skills.
    - Describe what you will implement, in your own words. Include a link to the GitHub issue if there is one.
    - Timeline describing what subtasks you will work on each week. Even though it may change due to unseen difficulties, please try your best to schedule your subtasks. Please also schedule time for unit tests and manual testing.
    - Availability:
        - Are you [eligible for Google Summer of Code](https://developers.google.com/open-source/gsoc/faq#what_are_the_eligibility_requirements_for_participation)?
        - Do you plan to submit any other proposal apart from this one?
        - Do you have any other plans during the period of GSoC?
        - How many hours per week can you dedicate for this?
        - Have you been accepted to GSoC before?
6. Post an email to the mailing list (commons-app-android@googlegroups.com) with a link to your Phabricator proposal, and ask for early feedback about it. We will gladly tell you how your proposal can be improved.
7. Also create the proposal on the [GSoC website](https://summerofcode.withgoogle.com). Most content can be copied from Phabricator. You will have to fill in these fields (feel free to adapt if necessary):
    - Project size: Large
    - Project Technologies: Android, Java, Kotlin, SQL
    - Project Topics: UI, UX, database
8. (_Optionally, you can fix more bugs, and add them to your proposal_)
9. (_Optionally, after 5 bugfixes, you can also work on enhancements, and add them to your proposal. Please stay aware that quality is better than quantity, though._)

# Task ideas

Here is the recommended idea this year:
-  [Improve the app using AI and especially embedded LLMs](https://phabricator.wikimedia.org/T383961)

If you really want to work on a different task, it can be considered. It can be hard to estimate difficulty, so we have selected a few ideas that we think are not too simple, not too difficult:
- [Losslessly transform picture (crop/etc) within the app](https://github.com/commons-app/apps-android-commons/issues/1192).
- Nearby improvements: show class icons, freedom of panorama info, point in time/etc, OSM.
- If you have another idea, please post it as a new issue on our GitHub and mention you are considering it for GSoC, so that we can provide feedback.
- You can even apply with two proposals: the proposal you imagined + the suggested proposal.

# How we choose the GSoC applicant

We choose the GSoC applicant based on (from the most important):
- Technical challengingness of merged bugfix(es).
- Quality of code (absence of bugs, good self-testing, use of Java & Android conventions).
- Efficiency and smoothness of interactions on GitHub.
- Ability to read documentation and find solutions independently.
- Quality of the proposal, if different from the suggested proposal (clear, convincing strategy and timeline, reasonably ambitious).
- Extra points for helping others, previous open source projects participation, etc.
- Note:  We do not take into account the _number_ of merged bugfixes, only the _quality_ of the best one(s).
