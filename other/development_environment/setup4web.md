# Set up development environment for Web 

1. Install [Chocolatey](https://chocolatey.org/)
2. Prepare to make a Virtual environment
3. Make a shortcut of Git-Bash on desktop
4. Make a virtual environment
5. Connect your git on Virtual environment to github

## 1. Install [Chocolatey](https://chocolatey.org/)

Chocolatey NuGet is a Machine Package Manager, somewhat like apt-get,   
but built with Windows in mind.  
If you use this, you can make development environment easier.  
So you do the following.
* Find "cmd.exe" on your PC.
* Start it **with manager authority**.
* Type this command on the top page of [Chocolatey](https://chocolatey.org/). 
  
***`@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin`***


## 2. Prepare to make a virtual environment

Install the following.  
If you have them, you don't have to do.
* [git](https://git-scm.com/)
* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)
* [SublimeText3](http://www.sublimetext.com/)

If you got [Chocolatey](https://chocolatey.org/), you only type this on "cmd.exe".

***`choco install git virtualbox vagrant sublimetext3`***  

If you don't know why we should make a virtual environment,  
please google it or ask me.

## 3. Create a shortcut of Git-Bash on desktop

You only start ["shortcutMaker.exe"](https://drive.google.com/open?id=0B0JdxUCwdD_UQjhFcU83LWFEY2c), and you find "Git-Bash" on your desktop.  
Please download "shortcutMaker.exe" and start it.  
You use this shortcut from now on.  

## 4.Make a virtual environment

Start "Git-Bash" on your desktop and type the following.  

***`mkdir ~/enpit`***

***`cd ~/enpit`***

***`vagrant init sazanaminoya/enpit2015`***

It's takes a while.(about half an hour to 1 hour or so)  
And then, you have almost finished making a virtual environment.

## 5. Connect your git on virtual environment to github

Please check [vagrant commands](http://stackoverflow.com/questions/11424690/what-exactly-do-the-vagrant-commands-do).  
Start "Git-Bash" on your desktop and type the following.

***`cd ~/enpit`***

***`vagrant up`***

***`vagrant ssh`***

***`sh github-connect.sh`***
