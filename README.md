# CS4337.006DarrenFernandesProject2
This is my Project 2. The following are the instructions to run this Prolog code from the Command prompt

***It is important to note that you need to have prolog downloaded and running on your system. you can test this by running swipl on your command prompt and seeing if it starts prolog***

    1) Navigate to the directory using the cd command eg. if it was in my downloads directory, i would run cd \Users<DarrenFernandes>\Downloads
    2) If you have all my files, you should have my test.pl, example.pl and Mazesolver.pl.
    3) Run the command swipl in the directory to enter the prolog environment.
    4) You should see:
        1 ?-
        Run [test, example, mazesolver]
    5) The following are tests you can run
        basic_map(M), display_map(M), find_exit(M, A).
        (solves a pre made map)
        basic_map(M), find_exit(M, [down, left, down]).
        (checks the moves if they are valid and solve the maze)
        gen_map(4, 10, 10, M), display_map(M), find_exit(M, Actions).
        (generates a random map and solves it)
    6) With these tests you should be able to test my code pretty thoughly. You can however also run different tests using these as a   guide.

There are 5 files in this folder. Here is each of their functions and content.
    1) Devlog.md: This is my devlog, it contains my thoughts before and after I sat down to work on this project. It is a bit more personal but explains my thoughs and visions each day before and after I started working.
    2) Readme.md: This is a guide to running this code and testing it.
    3) Mazesolver.pl: This is the main code that I was tasked with writing. It has all of the code functionailty that we were tasked with writing. It contains 5 main functions, some of which do follow recusion
    4) Example.pl: This contains basic example maps and functions to display them.
    5) Test.pl: This is what has test functions that can be used in testing.

There is also a hidden .git file here. However, if for some reason you cannot see it, the link to my github repository is:
https://github.com/DarrenFernandes0402/CS4337.006DarrenFernandesProject2

It is public so you should be able to see my code and its history, but feel free to reach out if you cannot.
