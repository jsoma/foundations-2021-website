---
title: How to not screw up running commands on the command line
---

## Copying and pasting from the internet

When you see instructions about how to do this-or-that on the internet, sometimes they include commands to run on the command line (or terminal or bash or the shell or whatever you want to call it). These commands often are shown like this:

```
$ pyenv global 3.10.0
```

There's an important secret they often don't tell you, though, about how to cut and paste it: **don't include the `$` part**. That just means, "this is a command you run in a shell." That way you know it isn't some Python code or a SQL command or anything like that!

### But wait!

...except, not always! **Don't listen to my advice too strictly.** Let's say you have a command that looks like this:

```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
```

In this case, the dollar sign is in the middle of the line. In this case, it doesn't mean "this is a command for terminal," it's actually doing something useful! Cut and paste both lines completely.

**Only ignore the `$` if it comes at the very beginning of the command**. Complicated and awful, yes, and I apologies for the entire internet.

## Something has gone wrong!

A big issue is accidentally cutting and pasting something incorrectly. Sometimes you'll end up in a situation like this, where you keep hitting enter and either *nothing is happening* or it keeps saying the this `dquote>` thing. It might also say `bquote>` or `quote>` or all sorts of other things.

Like this:

```
echo "hi frien
dquote> 
dquote> 
dquote> 
dquote> 
dquote> 
dquote> 
```

Basically, this means one thing: you screwed up! You started typing something, it never finished, and the computer thinks you're still trying to type a command. In this case it's waiting for me to type another `"`.

If your command line ever seems too busy to do anything for you, **you can escape by holding control and pressing C**. I'll usually call this **Ctrl+C**, because that's... what it's called. It will help you escape almost everything!

