## How does tracking and adding changes make developers' lives easier?
Tracking and adding changes helps for developers have a clear understanding of the progression of them making code. It allows for them to roll back when necessary, and also to work in groups by collaborating on different parts.
## What is a commit?
A commit is like reaching a checkpoint in a video game. It's stating you want to save everything up to that point. It can be as big or as small as you want to make it. 

## What are the best practices for commit messages?
You want to use `git commit -v' so you can write up a longer and more thoughtful message. You want to write it in the imperative. 

## What does the HEAD^ argument mean?
It means you want to uncommitted something, so that you can go back to work on the file some more. 

## What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. `git add {fileName}` This allows you to add the file or directory to your commitments 
2. `git commit  -m` This is you providing a message about what you're about to commit and serve as a version of the branch. 
3. `git push origin (master or branch)` Pushes the commits to GitHub.

## Write a handy cheatsheet of the commands you need to commit your changes?
Git...
     status
     add
     commit
     push origin Master/branch

## What is a pull request and how do you create and merge one?

A pull request is you asking for your branch to be matched to the master. It allows for your work from the branch to be public so other users on GitHub can see it. When you merge a pull request to the Master, that means that you've accepted that everything fits with the Master, and you want to bring in those changes to now be the norm for Master. 

## Why are pull requests preferred when working with teams?

It provides more structure to when teams are working on parts of code. Either the same code all at once, or multiple chunks that will eventually become something greater. Pull requests are like working for a magazine company, and you're approaching your boss to say that your one article is complete to be reviewed and added the greater project, a magazine issue. 