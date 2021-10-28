---
title: "Picking shells in OS X: bash vs zsh"
---

The command line looks boring enough that you'd think it was the same everywhere, but it isn't true! There are actually a handful of different varieties of the command line – technically speaking, they're called **shells**.

Back in the day, the default shell in OS X was something called **bash**.

Then, during some OS X update, the default shell suddenly became **zsh** (or **zshell**)!

Does this matter? Do you care? No, not really! Bash and zsh operate exactly the same as far as you're concerned, but there's one gotcha: _it can really screw things up when you try to install things on your computer._ This mostly has to do with startup files, and making sure things go in the right place.

## Startup files

When you start up Terminal, it runs a couple files to set things up. It'll adjust your `PATH` to let your computer know where to look for things, it'll set up `pyenv` to figure out what version of Python it should be using, it'll do blah blah whatever else you tell it to do.

The way it knows what to set up is **startup files** or **initialization files**. I don't have an internet connection right now so let's be honest: I made both of those terms up.

Based on what shell you're using, different startup files get run!

* If you're using **bash**, it runs `.bash_profile` and `.bashrc`
* If you're using **zshell**, it runs `.zprofile` and `.zshrc`

The best is when your computer suggests you switch from bash to zshell, and as a result you lose all of your settings. It's cute!

## Figuring things out

I have a YouTube video about this! It's oddly popular because this issue causes problems for every human on the planet. [How to fix bash_profile/PATH not working in OS X Catalina Terminal by using zshrc instead](youtube.com/watch?v=OfCbtMN9-Jo)