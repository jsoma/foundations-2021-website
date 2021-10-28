---
title: Why you should never use `sudo`
---

### What is sudo, and why do you use it?

50% of the time you try to find the answer to a problem you have, the answer is "oh just run the command again, but put `sudo` in front of it!" Honestly, it'll probably work, **but don't do it!!!**

Yes, you own your computer, but no, it doesn't really trust you. Since it doesn't trust you, there are actually several levels of "please don't touch this" files located on your machine.

One of the highest levels of protection files that *don't belong to you*. Instead of belonging to you – aka your username when you log in – they belong to the computer itself, a very powerful fancy user named `root`. 

When you run `sudo`, you're saying "oh hell I don't care about any of that, JUST LET ME BE IN CONTROL" and the computer says fine fine fine, do whatever you want. And then probably in like two weeks it turns out what you were trying to do was actually a bad idea, and there was a better solution!

### An example of not using `sudo`

In our case: when you tried to use homebrew to do something, it started yelling at you:

```
Error: /usr/local must be writable!
```

So bad! So scary!! If you [search for an answer](https://apple.stackexchange.com/questions/381970/error-usr-local-must-be-writable-update-homebrew) you find the perfectly predictable "just run `sudo`" answer. And yes, it works, and yes, it's near the top, but no! Don't do it!

The right answer is lower down: **reinstall homebrew and try again**.

Apparently between certain versions of homebrew (and maybe OS X) it stopped installing in `/usr/local` – which belongs to `root` – and started installing in `/opt/homebrew`, which apparently does *not* belong to root.

How would you know that? You personally wouldn't, honestly, except that this random person on the internet told you how it fix it.

But just know: **if the best solution suggests using `sudo`, find a second-best answer**. The computer is trying to keep those files safe for a reason! (...well, usually)