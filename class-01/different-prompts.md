---
title: Understanding the different prompts on the command line
---

## Comparing prompts

**The "prompt" is the thing to the left of your cursor.** Based on what prompt you see, you're allowed to do different things. Maybe you're able to run command line commands, or Python commands, or SQL commands.

But you can't use them all at once, they all need different prompts! Think of it as getting into Python mode, or SQL mode, or command line mode.

### Command line

If you're in the **command line prompt**, it could look like just about anything. It's usually pretty long, though, and usually has your username in it:

```
soma@skatert ~ % pwd
/Users/soma
soma@skatert ~ %
```

This is what comes up by default when you open Cmder or Terminal, and it also usually comes up when you quit Python or Postgres (see below). You can run commands like `ls` or `cd` here.

### Python interactive prompt

If you're in the **Python interactive prompt** (aka the **Python REPL**), each line will start with a lot of greater-than symbols.

```
>>> print("hello")
hello
>>> 
```

If you're here, you can run Python one line at a time. Running Python one line at a time isn't very useful, though, and if you end up there it's usually by accident!

### Postgres client

If you're in the **Postgres (or PostgreSQL) client**, each line will start with your username (or `postgres`) and an `=#`.

```
soma=# \l
                         List of databases
   Name    | Owner | Encoding | Collate | Ctype | Access privileges 
-----------+-------+----------+---------+-------+-------------------
 postgres  | soma  | UTF8     | C       | C     | 
 soma      | soma  | UTF8     | C       | C     | 
 template0 | soma  | UTF8     | C       | C     | =c/soma          +
           |       |          |         |       | soma=CTc/soma
 template1 | soma  | UTF8     | C       | C     | =c/soma          +
           |       |          |         |       | soma=CTc/soma
(4 rows)
soma=# 
```

The PostgreSQL prompt is good for running SQL commands. _Yes_, there are ways of doing it that don't involve the command line, but _yes_, we're hiding it from you right now.

### None of those!

If you see some other sort of prompt – maybe `>dquote` or `>quote` or `>bquote` – or nothing at all is happening when you type, slam **Ctrl+C** and try to escape from whatever you're in. It will... maybe work.

Fun and confusing, right?

## Getting into (and out of) the Python REPL

When you type `python --version` on the command line it shows you the version of Python.

```
$ python --version
Python 3.10.0
```

If you just type `python`, though, something totally different happens!

```
soma@skatert ~ % python
Python 3.10.0 (default, Oct 27 2021, 12:08:22) [Clang 12.0.0 (clang-1200.0.32.29)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> 
```

This is called the **interactive prompt** or the **REPL** or probably a hundred other things. It's a place you can run Python code, one line at a time.

```
>>> 2+2
4
>>> 0.1 + 0.2
0.30000000000000004
>>> 
```

But the thing is, **you can only run Python code in here.** Nothing else! If you try to use `cd` or `ls` or any of that, you're out of luck and it'll just scream at you. It only knows Python!

```
>>> ls
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'ls' is not defined
```

To exit the REPL, you'll try to type `exit`.

```
>>> exit
Use exit() or Ctrl-D (i.e. EOF) to exit
```

### Exiting the Python REPL

To actually exit the Python interactive prompt, you'll need to type `exit()` instead.

```
>>> exit()
$
```

And then you'll be back at your normal shell!

## Getting into (and out of) the Postgres prompt

If you want to find the version of postgres you're using, you can use `psql --version`.

```$ psql --version
psql (PostgreSQL) 14.0
```

If you type `psql`, though, you'll (maybe, possibly) end up at the **Postgres prompt**. You might also type `psql -U postgres` to get here, I dunno.

```$ psql
psql (14.0)
Type "help" for help.

postgres=# 
```

When you're here, you can only run postgres commands!

### Exiting the Postgres promnpt

To exit the postgres prompt, you can type `\q`. It'll take you right back to the command line.

```
soma@skatert ~ % psql
psql (14.0)
Type "help" for help.

soma=# \q
soma@skatert ~ % 
```

I swear sometimes `exit` works but I honestly don't know anything.

## Other prompts (that aren't prompts)

If you see `dquote>` or `bquote>` or `quote>` or anything like that, it isn't actually a prompt! It's a command that never finished getting typed.

Check out [this page for a fix](..running-cli-commands/#something-has-gone-wrong) or press **ctrl+C**.