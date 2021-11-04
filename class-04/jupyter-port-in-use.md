---
title: "What does \"The port 8888 is already in use, trying another port.\" mean for Jupyter?"
---

When you're starting up a Jupyter server, you might get a message about "the port already being in use." The server will work, the notebooks will open, but it's still confusing! It might look something like one of these:

```
[I 07:28:23.107 NotebookApp] The port 8888 is already in use, trying another port.
[I 07:28:23.107 NotebookApp] The port 8889 is already in use, trying another port.
[I 07:28:23.107 NotebookApp] The port 8890 is already in use, trying another port.
```

This happens when you start a new Jupyter server **after you're already running a Jupyter server**. Maybe you minimized the Terminal window, forgot about it, and started a brand-new one.

A 'port' is basically an address on your computer. By default, Jupyter uses port `8888` to let you talk to it (you can see this in the URL when you're looking at a notebook: `localhost:8888`). If you're already running a server, it will try `8889`, then `8890`, then `8891` and so on, until it finds an opening.

While this isn't really a *problem* or *error*, you probably don't need to be running multiple Jupyter servers! Before starting a new one, always check at [http://localhost:8888](http://localhost:8888) to see if a server is already running.