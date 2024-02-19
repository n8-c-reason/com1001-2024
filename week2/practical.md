# Week 2: Starting to Develop Your Team Web Application

Read this whole page first, then start to tackle each of the tasks. Don't leave
before doing no. 7 – deciding when and where you're going to meet next as a team.

### 1. In your teams, start to think about the architectural design of your web application

Take some of your key stories and discuss:

* What pages will be needed? 

* What will they look like and do? What forms are needed? (Note that we have not
  yet covered databases, but assume the user will be able to submit data via
  forms that you will be able to store data in a database for use elsewhere in
  the application.)

* How will these pages link together? For example, what will be the overall
  structure of the application, what hyperlinks are required, which pages are
  accessible only via form submissions.

### 2. In terms of the stories you discussed, and the pages you decided upon, and the eventual Sinatra application:

* What routes will be required?

* How might these routes be grouped into one or more distinct controller files?
  (For example, each different part of the system might have its own controller
  file, to keep all functionality for that part of the system together.)

* What views will you need? 

* What aspects of these views are "reusable" (e.g., common headers and footers
  in the application) that could form their own "sub" `.erb` files included into other
  views? (Watch [the video on Blackboard](https://vle.shef.ac.uk/ultra/courses/_107947_1/cl/outline) as to how I did this to write the [solutions](../week1/challenge-solutions) to the [challenges from last week](../week1/challenges.md).

### 3. Ensure everyone in the team is capable of setting up and running a blank Sinatra application (i.e., initially, one that contains little to no code)

This should have all the directories as per the structure mentioned in
lectures. Make sure that: 

* You can successfully set up two or more routes, and can get them working

* You can get each route to utilise a "view"

* You can get one or more views to display images, and use a CSS file placed in
  (or, ideally, in subdirectories of) the `public` directory of the application

* That each directory has at least one file. This is because Git will ignore
  empty directories, and so your intended directory structure will get lost. If
  you have no files to add to a directory right now, just add a `README.md`
  file, with one or two sentences explaining what the directory will eventually
  contain.

### 4. Initial Commit, Push, and Pull

Copy somebody's blank application into your project directory (you can do this
by right clicking in the filetree on Codio), commit and push it. Well done,
you've officially started your project! 

Note again, however, that Git will ignore empty directories. So ensure you have
at least one file in each one, as instructed in Part 3 (e.g., by adding a
`README.md` file).

Now: can each member do a pull and get the latest version of the project?

### 5. Responsibilities 

Start to decide how you're going to divide responsibility up for different parts
or aspects of the project. For example, who will be in charge of which stories?
**Make sure that each person has tasks that involve all aspects of development**
– i.e., that you don't have one or two people just programming, another just doing 
the views and so on.

### 6. Challenges

As a team, or in pairs/threes in your team, attempt to solve this week's [challenges](challenges.md).

### 7. Meeting Schedule

Before you leave, decide how and where you're going to meet-up each
week, in person or online, to continue development on the project.

