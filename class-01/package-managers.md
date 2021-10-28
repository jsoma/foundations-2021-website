---
title: Package managers on OS X, Windows and Linux
---

## What is a package manager?

Installing software is awful. You have to do what, like ten thousand steps?

1. Painstakingly search for something on the internet
2. Move your mouse around, click links
3. Figure out [which version of the software](../downloading-software/) you want
4. Somehow convince it to run on your computer

And probably like ten or twenty other steps. It's terrible!

**Package managers solve that.** You just type things on the command line like a hacker, and all of your problems are solved. It's great!

### OS X

There's really only one package manager on OS X, it's called [Homebrew](https://brew.sh/). You'll install a lot of things with it, by running `brew install blah blah blah`.

Over time OS X has changed a lot, and Homebrew has to do little dances to make sure it works successfully in each version of OS X. As you upgrade, you might need to reinstall homebrew or run commands like `brew doctor` in order to repair issues as a result of upgrades.

So don't stress if you run into issues: it's totally normal!

### Windows

Windows has two, one called [Chocolatey](https://chocolatey.org) and one called [Scoop](https://scoop.sh). For some reason package managers on Windows aren't terribly popular, and I don't use Windows, so unfortunately I'm not that familiar with them.

**If you're curious, though, you should totally give one of them a shot!**

### Linux

Linux is actually a *ton* of different related operating systems, and since they're all somewhat different they have a handful of package managers. `apt` is a big one, as is `deb`. They all work similarly to the other ones on Windows and OS X!

If you end up trying to run fancy software on [servers](https://digitalocean.com/) or [Google Colab](https://colab.research.google.com/), you'll probably use `apt` to install software that doesn't already come pre-installed.

## An example

For example, maybe you want to install [ffmpeg](https://www.ffmpeg.org) to edit videos from the command line. Instead of screwing around on their site to figure out how to install it, you can just use your package manager!

### Install ffmpeg on Windows

```
choco install ffmpeg
```

### Install ffmpeg on OS X

```
brew install ffmpeg
```

## Install ffmepg on Linux (or Google Colab)

```
apt install ffmpeg
```

## In summary

They're a delight!