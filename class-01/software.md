---
title: Installing software
---

## Slack, your chat software

[Slack](https://slack.com/downloads) is a messaging app that helps teams manage communications. Despite the fact that every month someone writes an article about how awful it is, very human being on earth seems to use it anyway.

Our Slack is located at [ledeprogram.slack.com](https://ledeprogram.slack.com/). Create an account using your Columbia email address.

> Even if you’re using your Columbia email, your Slack account is **not** the same as your Columbia account. You can use your Columbia email address, but you need to create a new Slack account.

Slack is the primary place for communication outside of class.

* `#data-ms-2022` is a general channel
* `#foundations` and `#data-and-databases` are for their respective classes
* `#events` is for, yes, events that are happening
* `#jobs` is for job postings
* `#coding` is for coding questions not related to classwork/homework. Students from prior years hang out in there (and in other channels), too.

You might want to check out [Getting started for new users](https://get.slack.help/hc/en-us/articles/218080037-Getting-started-for-new-users) to learn the ins and outs of Slack.

## PostgreSQL, your database server

PostgreSQL (or Postgres) is a kind of database. You’ll like it.

### Installing on OS X

There are a few ways to install PostgreSQL on OS X, but we’re going to go with [Postgres.app](https://postgresapp.com/downloads.html). Just download the most recent one.

> Whenever you want Postgres to be running, run the app.

To run the psql client which lets you ask the database for information, open the app and double-click the database you’re interested in.

### Installing on Windows

We’re going to install the boring official Postgres install from [here](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads). You’ll be able to pick between “Windows x86-64” (aka 64-bit) and “Windows x86-32” (aka 32-bit) - try to install the 11.3 64-bit version first, if it doesn’t work you can do 10.8 32-bit version.

**During installation, you _might_ be able to choose several options:**

* If it asks you what pieces you want to install, you might as well say all of them.
* At the end of the install, it might ask you if you want to install some related software. You can say no to this one.
* Unless you have a good memory, set the password to `postgres` so we don’t have to reset it later!

> When you want to access the database, you could just run `psql` from the start menu. There's a chance it'll give you an error, though: in order to make that error go away, you need to open the cmd from the start menu, `run chcp 1252`, then run `psql -U postgres`. We’ll talk about why in our second class.

## Visual Studio Code, your text editor

We're going to use [Visual Studio Code](https://code.visualstudio.com/) to program in. Download and install it just like normal software. Later you'll want to set up a plugin or two.

There are a lot of Python-specific tools one can use to write code - [PyCharm](https://www.jetbrains.com/pycharm/), [IDLE](https://realpython.com/python-idle/), blah blah blah, but because we like to fit in with the rest of the world we're settling for VS Code.