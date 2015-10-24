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

If you cannot use this exe, please do the following.

1. **Find "git-bash.exe" in your PC.**  
   You may probably find it in "C:\Program Files\Git" or "C:\Program Files (x86)\Git".
1. **Make shortcut on your desktop.**  
   Right-click on the exe and you can find a kind of "make shortcut".
1. **Change working directory.**  
   Right-click the shortcut of "git-bash.exe" on your desktop and click properties.  
   Write "C:\Users\YOUR_USER_NAME\Documents\workspace\enPiT2015" in "Start in".  
   (Replace YOUR_USER_NAME to your account for your PC.)

## 4.Make a virtual environment

Start "Git-Bash" on your desktop and type the following.  

***`mkdir ~/Documents/workspace/enpit`***

***`cd ~/Documents/workspace/enpit`***

***`vagrant init sazanaminoya/enpit2015`***

It's takes a while.(about half an hour to 1 hour or so)  
And then, you have almost finished making a virtual environment.

## 5. Connect your git on virtual environment to github

Please check [vagrant commands](http://stackoverflow.com/questions/11424690/what-exactly-do-the-vagrant-commands-do).  
Start "Git-Bash" on your desktop and type the following.

1. ***`cd ~/Documents/workspace/enpit`***

1. ***`vagrant up`***

1. ***`vagrant ssh`***

1. ***`sh github-connect.sh`***

If you cannot use `sh github-connect.sh`, please do the following.

1. **After `vagrant ssh`, set up Git**  
  
  ***`git config --global user.name "YOUR_USER_NAME"`***

  ***`git config --global user.email YOUR_USER_EMAIL`***
  
1. **Check your set-up of Git**

  ***`git config --list`***
  
1. **Make SSH-KEY.**  

  ***`ssh-keygen -t rsa`***  
  
  and press "Enter" key three times.(That's means there is nothing to need to input)

1. **Copy SSH-KEY**  
 
  ***`cat ~/.ssh/id_rsa.pub`***  

1. **Access [GitHub](https://github.com/settings/ssh) and paste it**
