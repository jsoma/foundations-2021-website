---
title: What is the PATH? And how to set your PATH
---

When you go to look for a hairbrush, it could be a in a few places. Maybe in your bathroom cabinet, maybe on the sink, maybe in your bedroom. Probably not on top of the ceiling fan, probably not in a bag of sugar.

When you type a command on your computer – like, say, `hairbrush` – the computer doesn't look in every single place that exists on your computer. Instead, it goes down a list of places called the `PATH` that contain software it can run.

The biggest issue you'll have in your entire life is **your command line not being able to find software after you've installed it.** Generally this is a PATH issue: if the bathroom sink isn't listed on the PATH, your computer will never find the hairbrush!

## Setting your PATH in OS X

The PATH is generally set in the `.bashrc`/`.bash_profile` or `.zprofile`/`.zshrc` files, depending on [which shell you have](../bash-vs-zsh).

There's usually a line that says something like

```
export PATH=/usr/local/bathroom_sink:$PATH
```

which adds the `/usr/local/bathroom_sink` directory to your PATH.

## Settings your PATH in Windows

This is not as fun! In Windows you get to click around and manage **environment variables**.

## Conflicting paths

Let's say you typed `hairbrush` but you had **two hairbrushes in your apartment**:

* One in `/usr/local/bathroom_sink`, 
* and another in `/opt/homebrew/shopping_bag`

Just like a person, your computer stops searching once it's found what it's looking for. It goes down the list of places the hairbrush might be, finds it in the sink, and then never looks in the shopping bag!

This can end up causing problems every once in a while:

Let's say you have a few Pythons installed on your computer, and you just installed a brand-new `3.9.7`.

You run `python --version` and it says... `3.8.6`! What happened to the `3.9.7` you're looking for? **It might be a `PATH` issue!**

If your computer's `PATH` has the `3.8.6` one before the `3.9.7` one, it'll never be able to find the new version! You have two options:

* Uninstall `3.8.6` (maybe overkill)
* Look at your `PATH` and see if you can change the order (maybe confusing)

How does this work in real life? Well, for example, my `~/.zshrc` might look like this:

```
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
```

The first line adds Python 3.8 to my `PATH`, while the second adds Python 2.7. Are we getting an unexpected version of Python when we run the code? Maybe switch those two lines so it looks in the other location first!

To learn more, you might want to read about [startup files](../startup-files-for-shells/)