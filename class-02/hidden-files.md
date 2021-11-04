---
title: What are hidden files like .bash_profile and .gitignore?
---

Congratulations, you own a computer! But even though you shelled out your hard-earned cash, **it doesn't quite trust you.**

There are a few different ways that the computer protects itself from you accidentally screwing it up. One of the less serious ways is creating **hidden files.**

## How hidden files hide from you

Hidden files are files that you're free to browse, open, and edit, **but only if you are able to find them!** On OS X, hidden files are marked as "hidden" by having their filename start with a period.

|filename|description|
|---|---|
|`filename.txt`|not a hidden file|
|`.filename.txt`|a hidden file!!|

By default, both Finder and the command line both hide these files from you. While [finding hidden files](../listing-hidden-files) or [editing them](../editing-hidden-files) isn't too difficult, their slightly secret nature keeps them juuuuust hidden enough that most computer users won't be able to accidentally screw up their computer by editing them. [Security through obscurity](https://en.wikipedia.org/wiki/Security_through_obscurity) at its finest!

## Examples of hidden files

### Shell startup files

[Shell startup files](https://jonathansoma.com/course/foundations-2021/startup-files-for-shells/) are the most common hidden files.

* `~/.bash_profile` and `~/.bashrc` are startup files for the bash shell, while
* `~/.zprofile` and `~/.zshrc` are startup files for the zsh shell.

Their filenames are technically just `.bash_profile` (etc), but you'll usually see them listed as `~/.bash_profile` as a marker that they're in your home directory.

### `.gitignore`

When you're saving your files into a git repository, the `.gitignore` file tells git about files it should ignore. For example, temporary files and Visual Studio Code setting files.

### The `.git` folder

While most hidden files are just that – files – sometimes you'll come across entire directories! When you set up a folder as a git repository, it secretly creates a `.git` folder: all of the data for the repo is tracked inside of this folder!

If you delete the `.git` folder, all of the local information about the repository will be lost.

### `.DS_Store`

Oh boy, don't get me started on `.DS_Store`! It's a [weird little file that shows up in OS X folders](https://en.wikipedia.org/wiki/.DS_Store) that will be the first thing you add to your `.gitignore` file.

Most OS X users won't know `.DS_Store`files  exist since they're hidden (unless they turn on [seeing hidden files](../listing-hidden-files)), but Windows users might! If a Windows person opens up a zip file made on OS X, oftentimes a `.DS_Store` will show up after accidentally being included by the mac user.