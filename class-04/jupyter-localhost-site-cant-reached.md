---
title: "Why am getting \"site can't be reached\" when I try to access my Jupyter notebook?"
---

![Site can't be reached](images/site-cant-be-reached.png)

One error you might get when trying to visit your list of notebooks is **This site can’t be reached: localhost refused to connect.**

```
This site can’t be reached

localhost refused to connect.

Try:

Checking the connection
Checking the proxy and the firewall

ERR_CONNECTION_REFUSED
```

This happens because you shut down your Jupyter server, so the URL at `http://localhost:8888` doesn't work any more. You probably closed the a Terminal window or pressed Ctrl+C to go run other commands.

To fix this, you'll need to start a new notebook server by running `jupyter notebook` on the command line. This will start a new server and the [http://localhost:8888](http://localhost:8888) sites will start working again.