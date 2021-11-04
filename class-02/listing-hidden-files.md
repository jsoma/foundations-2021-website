---
title: How to list hidden files on OS X and the command line
---

## How to list hidden files on OS X

On OS X, viewing hidden files is simple! First, open up **Finder**, the thing you use to browse files.

Now, **hold down the Command and Shift keys, then press the `.` key**. We can also call that **Command+Shift+.**. The hidden files will magically appear! (unless there aren't any hidden files, in which case nothing will change).

You can tell which files are hidden and which aren't because hidden files have periods in front, sure, but they're also faded out and somewhat transparent!

## How to list hidden files on the command line

When you're on the command line, The `ls` command normally lists files. It doesn't show ALL of the files, though!

If you use the `ls -a` command instead, it includes the `-a` "all" flag – the command will list all of the files, including hidden files. Generally people use `ls -lah`, which includes *three* flags:

* `l`, to list the files in "long" format, aka put one file on each row
* `a`, so show all files (including hidden ones)
* `h`, to display file sizes in "human readable" fashion - so `2.4k` instead of `2498`.