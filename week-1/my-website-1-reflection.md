# 1.6 Reflections

## Paste a link to your [USERNAME].github.io repository.
[http://mintii.github.io/](http://mintii.github.io/)
## Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
1. We're going to create a house, known as a repository. This is what will *house* our project! You want to log into github.com and then click on the plus sign button in the top right hand corner. Select New Repository for the menu. 
2. Put in your Repository's name, give it a description, make it public or private. You can then add licensing to the repository. These are all aspects of your repository that gives it context to how people can interact (or not) with your work. 
3. Click Create Repository. It's a green button at the very bottom of the page. 
4. Next, you want to locate on the page a button that says HTTPS, and you want to copy the info in the text box to the right of it. What we're about to do now is bring this repository over to your computer so you can work on it locally. 
5. Open up Bash, which is a shell terminal used to help interact with your computer through text commands, and navigate to the directory or folder you want to save this repository into. Personally, I like saving it on my Desktop.
6. Next, type in `git clone [paste the material you copied here]` and then hit Enter on your keyboard. You will see a couple lines where Git is thinking and working with GitHub to download this repository. It will look like what is listed below: 
```Cloning into 'mintii.github.io'...
remote: Counting objects: 3, done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
Checking connectivity... done.```

7. Congrats, you're done! You've just created a repository and cloned it into your local computer. Going back tot he house analogy, this means that you've made a house for everyone to see and work on as well as your own personal house to see and work on. You can add your own windows, red shutters, etc, locally and this won't be updated onto GitHub until you're ready to update it with a few additional commands. 
Of course, baby steps, we will work on that next. :) 

## Describe what open source means.
Open source is the practice of sharing how something was made, so others can contribute or modify it to their own uses. 

## What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
I think Open Source is very cool because it allows for innovation in 360 degrees. Sometimes open source software looks less pretty than closed source software (GIMP vs Photoshop), but what's amazing is that I have the ability to take that software and modify it into something I want. You see this a lot with GIMP where there's different texture packs on how the program looks and feels. You see this with Calibre, a ebook manager, which has tons of plugins to choose from. 
I believe the only time someone should be nervous about open source is when it is a program that is not well maintained, or regularly updated. Just like pizza and movies, it's always good to read the reviews of what others are saying before using open source software. 

## Assess the importance of using licenses.
Providing licensing to your open source software makes it easy for others to contribute and know what boundaries and conditions you are setting. Three main topics with your licenses you want to focus on include what happens to derivatives of your software, can others make money off it, and what is required of people who have improved upon your software? 

## What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
:sweat: :bus: ### ALL ABOARD THE STRUGGLE BUS!! :sweat: :bus:
I struggled a lot with trying to commit and push my work. I kept running into errors saying that my branch wasn't there even though it's being listed along with my pwd. I used a lot of the command  `>   git rm -f --cached path/to/subdir   # remove from index, keep files ` which kind of resets the path of the branch, and allowed me to continue on with adding, committing, and pushing to GitHub. 

## Did you find any resources on your own that helped you better understand a topic? If so, please list it.
Google, and usually that lead to Stack Overflow or someone's blog.
