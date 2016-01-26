# Think About Time Reflection

## Which time management and productivity ideas did you learn about?

I researched habits and how they related to both intrinsic and extrinsic rewards, as well as tiny iterations. We all have habits we want to form or break from our lives, and it's success depends on how you structure and form a goal to reach the habit. 

Rewards are important when forming habits because it allows for a person to transition their desire to work towards a goal to it becoming a natural occurrence. In the video, Create a Habit, Charles Duhigg explains how a piece of chocolate can be an excellent extrinsic reward for exercise and as time goes on the person finds intrinsic rewards to exercise like endorphins and feeling fit. This needs to be done in small increments, and he alludes to the pomodoro method as a great start to working towards achieving goals and forming new habits. 

Taking a big bite to achieve a huge goal is disastrous, instead people should take small steps to reach it. BJ Fogg recommends focusing on an anchor to where a new habit will spin off. For him it was "After I use the bathroom, I will do 2 pushups," and eventually he increased it to where he's completing over 20 pushups after each bathroom break. It is important to reflect and look to how to iterate these goals. One great mnemonic device for remember goal setting is to be SMART (Specific, Measurable, Achievable, Results-focused, Time-bound) where instead of saying, "I want straight A's on my report card," you set standards that match the 5 within SMART to paint a very vivid picture on what you need to achieve. Using these two strategies to setting and implementing goals is one thing, but it also needs an outside force to keep the momentum going. Extrinsic motivators can be tools to help with the momentum especially in early stages. When using this type of motivator it is important to celebrate the person you've become to receive that reward than the reward itself ("I'm happy I was able to finish learning about while loops, it's time to celebrate with cake.")

## What is "Time Boxing?" How can you use it in Phase 0?

Time boxing is when you set a specific time, and use that time to work towards completing a goal. The pomodoro method is a popular example of time boxing. The pomodoro method is done in a 1 hour cycle of 25 minutes of work, 5 minutes of a break, 25 minutes of work again, and then a 15 minute break (of course it can be scaled to however you prefer). I have used the pomodoro method extensively during my time in college as a way to help pace and structure my study time. Instead of saying to myself I will study for 3 hours straight, I would break up my time in pomodoro cycles, and plan what I would work on for each 25 minute block. 

I see myself using the Pomodoro method in a similar capacity during Phase 0. I've noticed so far with working on programming that I can work for longer periods of time before feeling drained or distracted, so I will play around with the length of my work blocks.

## How do you manage your time currently?

Over the Spring and Summer of 2015 I scheduled time early in my day before work to learn programming and to exercise. With programming I set up small steps on what to do with my morning before work: wake up and brush my teeth, put on hot water for tea and make breakfast, begin on a programming lesson and work for 1.5 hours, shower and get dressed, go to work. By working hard first thing in the morning before work, it freed up my evenings to spend time with my family and friends.

## Is your current strategy working? If not, why not?

My current strategy is not working because I currently have no strategy. :) As I begin the first week of Phase 0, I can already see I need to look at my schedule to plan for specific chunks of my day towards DBC. 

## Can/will you employ any of them? If so, how?

I really enjoyed listening to Charles Duhigg and BJ Fogg's talks on habits and I want to employ making moretiny habits everyday.

## What is your overall plan for Phase 0 time management? 

My plan for Phase 0 involves working on my assignments for about 4 hours a day (either all at once, or broken up throughout the day.) Each week seems like it will be met with different amounts of intensity, so I want to keep it as loose and free flowing so I can dedicate more time each day if needed. I want to dedicate as few commitments to my life as possible right now to make the most out of DBC, so I have already decided to stop working during Phase 0.

## Resources: 

[This Research Study Changed the Way We Think About Success (Here’s How You Can Use It)](http://jamesclear.com/growth-mindset)

[Forget big change, start with a tiny habit: BJ Fogg at TEDxFremont 
](https://www.youtube.com/watch?v=AdKUJxjn-R8)

[How to Instill Intrinsic Motivation](http://7mindsets.com/intrinsic-motivation/)

[Student Success: How To Become A SMART Student Before Summer’s Over](http://www.getorganizedwizard.com/blog/2009/07/student-success-how-to-become-a-smart-student-before-summers-over/)

# The Command Line Reflection
 
## What is a shell? What is "bash?"

The shell is the primary interface used to interact as close as possible to the computer. A shell, also known as a command-line shell, is the place where keyboard inputs lead to computer commands (i.e. pwd will list your working directory). A "flavor" of shells include Bash. It is a type of Unix Shell and the default for most Linux computers. 

## What was the most challenging for you in going through this material? 

Reading and practicing through the book,Learn Code the Hard Way, was certainly a challenging process. I had to plan my week to read this book, but also to try and go through the rest of this week's assignments. 
Were you able to successfully use all of the commands?
Yes, I have previous experience with using commands in the shell, but with a lot fewer commands than what we had to learn this week.

## In your opinion, what are the most important commands and arguments to know?
It's important to know your starting position while navigating through directories, so I believe pwd and ls together are very important commands to know. Using help is also important to familiarize and grow comfortable with because it's pretty much the manual/ rule book to the shell! And I have a feeling in the future we will be pushed to work from the shell more, and I know with Ruby there's a huge library of info in irb which has a very similar look and feel to the shell. 

## Can you remember what each of the following does of the top of your head? Write what each does.
`pwd`
Print working directory. It will show you something that starts with C:\...and then include all the directories you are within. 
`ls` 
List Directory. This will list what all is include within the directory you're working on. So while you're in C:\Users\BananaBrittney\documents\, when you ls on this directory you can see all of the files and additional directories. If you put in ls -a, you can see more files, called hidden or dot files. 
`mv`
You can use this command to rename files or directories as well as move them from one place ot another. 
`cd`
Change directory. This is like your "double click to open a folder" if you were interacting with a GUI. Instead we type in "cd [nameOfDirectory]" and then your shell will move you to that new location. 
`../`
This allows you to move backwards through directories. Each iteration of ../ will take you up one level.  If you simply put "cd ~" it will take you all the way back to your home directory. 
`touch`
Creates a file. 
`mkdir`
Creates a new directory, or folder. Probably the one example I've encountered so far where using the shell is easier than the GUI. In the GUI I have to right-click into a space and click New Folder, then name it..blahblahblah. Nope, "mkdir Bananas" and I have it right there! 
`less`
Gives you the ability to view the file within the shell. 
-q to quit
-w to page up to the beginning
-If you type in "less [filename]' and then type in h, it will give you a list of Less Commands
`rmdir`
Remove directory. The opposite of mkdir. This process is irreversible, so use it carefully! If you rmdir a directory with things in it, they will also be removed. 
`rm`
Remove a file. 
`help`
Type this in to plus a command to learn more about the command. You can also use "man", short for manual in Unix. 

# Forking and Cloning Reflection

## If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

We would want to fork a repository rather than creating one because it gives a newbie material to see what they should expect when cloning things locally onto their computer. If we simply create a new repo, there will be nothing to compare in bash to Github. 

1. To fork a repo, you want to go to GitHub and navigate to the one you want to work on, for example, Link (Links to an external site.).  
2. Look for the big button in the top that says Fork and click that. Choose your username so it's forked into your own account. 
3. The page will load to this new forked repository. If you look at the top it will show [username]/[forked-repo-name] 
4. Next, to add this locally to your computer, we need to clone it. 
5. Open your Bash terminal, and change directories to a one you want to work on. 
6. Back in Github you want to look for a section that shows HTTPS and a text box beside it. Copy the contents in that text box, and go back into Bash. 
7. In Bash, you want to type in " git clone" and then paste the stuff you've just copied, and then Enter. 
8. You should see something like what I've listed below. You may also be asked to put in your password again. 
```$ git clone https://github.com/mintii/p0-cli-exploration.git
Cloning into 'p0-cli-exploration'...
remote: Counting objects: 43, done.
remote: Total 43 (delta 0), reused 0 (delta 0), pack-reused 43
Unpacking objects: 100% (43/43), done.
Checking connectivity... done. ```
9. Now you have a successful forked repo located in your computer! Congrats!!
10. You should see all the same files listed on the repo's page on Github and within Bash. Now you'll be able to work on these files and save them locally. Nothing has been affected by the original person's branch. 

Once someone is familiar with how files and folders will look between the two, we can go on to create a new repo.  

1. To create a new repo, go to your account on GitHub. 
2. Look for a little plus sign in the upper right hand corner. 
3. Click on this, and select New Repository from the drop down menu. 
4. Type in the name of the repo, give it a description, make it public or private, and then give it necessary licenses. 
5. Click the green "Create a repository" button, and then you're done!!

## What struggles did you have setting up git and GitHub? What did you learn in the process?

The terminology with Git is always the biggest hurdle. Working with programming languages like Ruby or even JavaScript there's usually some rhyme or reason for why we type in certain commands to make them work. With git it feels very cryptic. Everyone assures me that I will *git* it eventually, but  it certainly takes time and lots of practice. 

Github is less confusing than Git. I have used it personally before DBC and I used their GUI program to manage my version controls. I'm trying to be more patient this time around on learning Git. 
