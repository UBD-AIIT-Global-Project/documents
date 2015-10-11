# Set up development environment for Web 

1. Install [Chocolatey](https://chocolatey.org/)
2. Make a Virtual environment
3. Create a shortcut of Git-Bash on desktop

---


## 1. Install [Chocolatey](https://chocolatey.org/)

Chocolatey NuGet is a Machine Package Manager, somewhat like apt-get,   
but built with Windows in mind.  
If you use this, you can make development environment easier.  
So you do the following.
* Find "cmd.exe".
* Start it **with manager authority**.
* Type this command on the top page of [Chocolatey](https://chocolatey.org/).   
***@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin***


---
## 2. Make a virtual environment

Install the following.
* [git](https://git-scm.com/)
* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)
* [SublimeText3]()

If you got [Chocolatey](https://chocolatey.org/), you only type  
***"choco install git virtualbox vagrant sublimetext3"***  
If you don't know why we should make a virtual environment,  
please google it or ask me.

## 3. Create a shortcut of Git-Bash on desktop

You use this shortcut from now on.

## 
