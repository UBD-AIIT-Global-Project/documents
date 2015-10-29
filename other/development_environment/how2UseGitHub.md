# How to reflect your code to GitHub  

1. [Host]Start VM and login it.
1. [Guest]Change directory.
1. [Guest]Do [Clone](https://help.github.com/articles/cloning-a-repository/).(only at the first time)
1. [Guest]Make branch and change branch.
1. [Guest]Reflect your changes to GitHub.
1. Create a pull-request on GitHub.
1. [Guest]Reflect GitHub master to your master on your PC.  
	(When GitHub master differs from your master on your PC)

* Host means host machine and guest means guest machine.  
	[What are a host and guest machine?](http://www.virtualizationadmin.com/faq/host-guest-virtual-machine.html)  
	![hostguest](https://github.com/2015-GlobalPBL/documents/blob/master/other/development_environment/image/HostGuest.png)
* We use [GitHub-Flow](https://guides.github.com/introduction/flow/).  
	Please see [this](http://scottchacon.com/2011/08/31/github-flow.html), too.


## 1. [Host]Start VM and login it.

1. Change directory where is **vagrantfile** with command **'cd'**

1. ***`vagrant up`***

1. ***`vagrant ssh`***


## 2. [Guest]Change directory.

1. ***`cd /vagrant`***

**/vagrant** is [synced folder](https://docs.vagrantup.com/v2/synced-folders/).


## 3. [Guest]Do [Clone](https://help.github.com/articles/cloning-a-repository/).(only at the first time)

1. ***`git clone https://github.com/2015-GlobalPBL/development.git`***

1. Set your GitHub name and password.


## 4. [Guest]Make branch and change branch.

1. Change 'development' directory with command **'cd'**

1. [***`git branch "workBranch"`***](https://www.atlassian.com/git/tutorials/using-branches/git-branch)

1. [***`git checkout "workBranch"`***](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)


## 5. [Guest]Reflect your changes to GitHub.

1. ***`git add -A`***

1. ***`git commit -m "commit messages"`***

1. ***`git push origin "workBranch"`***


## 6. Create a pull-request on GitHub.

1. Please see [this](https://help.github.com/articles/creating-a-pull-request/).


## 7. [Guest]Reflect GitHub master to your master on your PC.  
	
1. ***`git pull origin master`***
