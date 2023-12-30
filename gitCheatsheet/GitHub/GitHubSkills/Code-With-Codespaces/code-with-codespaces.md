
Created:	30.12.2023           Updated: +++ +++
################################################################################################
https://github.com/skills/code-with-codespaces
https://github.com/justusvaltonen/skills-code-with-codespaces

https://code.visualstudio.com/docs
https://aka.ms/configure-codespace      --> Configure
https://aka.ms/ghcs-default-image       --> What comes installed for the first time when you start this
https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers

https://github.com/codespaces
https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles
    --> Custom configs for many
    
https://docs.github.com/en/codespaces/developing-in-a-codespace/developing-in-a-codespace
https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers
https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account
https://docs.github.com/en/codespaces/prebuilding-your-codespaces/about-github-codespaces-prebuilds
https://docs.github.com/en/codespaces/managing-codespaces-for-your-organization/enabling-or-disabling-github-codespaces-for-your-organization



------------------------------------------------------------------------------------------------
-- Important files and paths: --
devcontainer.json

------------------------------------------------------------------------------------------------
Unfortunately VSCode isn't properly supported on linux. Enabling features requires too big of a securityrisk,
or I just don't know how to do things properly. We'll see how far we can get without the IDE.

This is a very fun topic though. What you have is a computer that resets totally on each shutdown. How to preserve state?
The answer is to use trusted by the cloud IDE to get information that would normally be contained inside the cloud without access.
...This is my guess that is. It's possible that same process happens always, independent on SW you use.
Some time ago, I tried to do autodeployment by hand without the help of ready programs designed for that.
Too time exausting for one man.


Who this is for:
  Developers, DevOps Engineers, Engineering Managers, Product Managers.
  What you'll learn: How to create a codespace, push code from a codespace, select a custom image, and customize a codespace.
  What you'll build: A codespace with devcontainer.json files, customizations, and personalizations.

In this course, you will:
    Create your first codespace
    Add a custom image
    Customize your codespace
    Personalize your codespace

------------------------------------------------------------------------------------------------

A codespace is a development environment that's hosted in the cloud. You can customize your project for GitHub Codespaces by committing configuration files to your repository (also known as configuration-as-code), which creates a repeatable codespace configuration for all users of your project. Each codespace you create is hosted by GitHub in a Docker container that runs on a virtual machine.

You can choose the type of machine you want to use depending on the resources you need.

GitHub offers a range of features to help your development team customize a codespace to reach peak configuration and performance needs. For example, you can:
    Create a codespace from your repository.
    Push code from the codespace to your repository.
    Use VS Code to develop code.
    Customize the codespace with custom images.
    Manage the codespace.

-To me it looks like there is no actual value to give your code to cloud providers. The only value is that someone gets rich from your money. Also now own your data.
"Give me your data. I will not use if for anything, I just want to have it for... scalability?"

-I run the oldest and crappiest equipment ever and NEVER has the need for scale come across as a bottleneck. Only if the upkeep is so high that it exhausts all recourses.
-You can now put in more crap in between when you didn't use to need any. Also your SW is slowen and costs more...

------------------------------------------------------------------------------------------------

Created a new codespace from GH GUI and it span up a VSCode looking browsertab. How cool. So embarassed from my previous comments.


Introduction texts in the terminal:

Welcome to Codespaces! You are on our default image. 
   - It includes runtimes and tools for Python, Node.js, Docker, and more. See the full list here: https://aka.ms/ghcs-default-image
   - Want to use a custom image instead? Learn more here: https://aka.ms/configure-codespace

To explore VS Code to its fullest, search using the Command Palette (Ctrl + P).
Edit away, run your app as usual, and we'll automatically make it available for you to access.

 You can customize your project for GitHub Codespaces by committing configuration files to your repository (also known as configuration-as-code)

-Houston, we have a shell! This means that we have a great environment setup somewhere what we can use as almost like a linux machine.
Most likely the machine resets from time to time. History and aliases and whatnat goes away.

-One should notice that we have a $HOME dir as a separate place from our git repo. /workspaces is the place for git stuff.

------------------------------------------------------------------------------------------------
Step 2: Add a custom image to your codespace!

    What are development containers?
Development containers, or dev containers, are Docker containers that are specifically configured to provide a fully featured development environment. Whenever you work in a codespace, you are using a dev container on a virtual machine.

A dev container file is a JSON file that lets you customize the default image that runs your codespace, VS code settings, run custom code, forward ports and much more!

GUI let's add paths to filenames for example naming our file: .devcontainer/devcontainer.json creates a hidden dir

-Get outta here! When I use VSCode on my local machine, I can't seem to get it spread so that 2 displays display VSCode content. It's supposed to be an app built inside a
browser... So an instance of your local chromium or mozilla browser. Now when I use with the codespaces, I can see that this is no problem anymore. Fuck onmprem, I'm migrating.

-OK it's not neccessary that good. The readme page doesn't update on the older instance. Other than that, all seems to co-exist just fine.
-Looking at the envs, there is a token for github codespace. For both instances it's different. Can't remember how to check loginshell status. There we could possibly check if the other is parent process.

All of a sudden I land at: https://github.com/codespaces
This looks oh, so familiar. Computer says that only 2 codespaces are allowed at one time. OK, this wasn't that good even tho still better than local machine.

-Oh now I see, the configs were there to advertise copilot. I don't have a subscription so I don't have access...

-So the echo did come visible on VSCode scope, but when I go take a look at the repo from WebGUI, there is no appending done to codespace.md...
-Also copilot didn't want to be easy. Tried to install one version that looked reliable, but it was the wrong or something is wrong. Possibly me not having a paid account.
-Hmm, where can we easilly see the scopes of what does what do? If none of the changes are permanent, then there is no point to fool around, but fun.

------------------------------------------------------------------------------------------------
Step 4: Personalize your codespace!







################################################################################################
## End of File
################################################################################################

