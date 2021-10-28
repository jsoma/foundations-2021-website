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