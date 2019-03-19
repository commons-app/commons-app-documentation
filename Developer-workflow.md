## Working on a change

1. Ensure nobody else is already working on the issue. You should read the comments on the issue and read through the open pull requests.

2. If you have chosen an issue, comment that you have begun work on the issue. If it will take you a long time, keep the issue updated with progress reports so people know you are still working on it.

3. Before you start working, ensure you are starting from an up-to-date branch to minimise merge conflicts and bugs in integrating your changes.

4. As you're working on your change, be sure to follow the [[code style guidelines|code style]]

5. Test your change. If the feature involves uploading pictures, either upload good picture that you take yourself, or ask us on the mailing list: We can send you dozens of good pictures that are not yet on Commons.

6. If you give up working on an issue leave a comment to let people know it's unassigned. It might also be helpful to explain what challenges you faced so future contributors get a head-start working on it.

## Submitting a change

1. Create a new branch with a descriptive name in your fork of the repository, and push your changes to it

2. Submit a pull request to master with your change

3. Travis will automatically review your PR. If it fails, have a read of the error messages to try to find out why.

4. If Travis passes, wait for another developer to review and merge your change. Please be patient - as this is a volunteer project it can sometimes take time, especially for large changes or changes to the upload logic.

## Reviewing a change

1. Check Travis is passing
    - If not have a look in the logs to try and deduce what the error might be and provide feedback to the requester
    - If you think Travis should pass but isn't, try restarting the build. If this still doesn't work, see if there is any discussion in issues. If one doesn't exist already, submit a new issue tagged `continuous integration` and `high priority`.

2. Read through the code, ensuring it looks sensible and complies with our [[code style guide|code style]].

3. Get a copy of the code into Android Studio. To get a copy of a pull request, you can run
    ```
    git fetch upstream pull/$1/head:pr-0000 && git checkout pr-0000
    ```
    replacing `0000` with the pull request number

4. Test the functionality of the new code by using the app.
    - If it affects the upload flow, try uploading a picture to Beta Commons. Check the picture on Beta Commons looks right, has the correct license, has the correct categories and has the correct app version tag.
    - If it is fixes a bug, try to recreate the bug in the old version so you can be sure you understand what conditions create the bug.

5. Submit the results of your review as a Github review, either approving the changes or requesting changes. In this you should leave a comment about what testing you performed. If requesting changes be sure to be specific about what needs to change.

6. If you have approved the changes and have write access, follow the instructions in "Merging a change" below.

## Merging a change

If you have write access, you may merge anyone else's code after review.

Before merging, ensure:
- You have reviewed and approved the changes
- The pull request has been carefully tested
- The changes comply with our [[code style guide|code style]]
- You are not merging your own pull request, or one which you have significantly contributed to

Please use "Squash and merge" to merge changes.