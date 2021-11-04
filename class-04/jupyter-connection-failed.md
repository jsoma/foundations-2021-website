---
title: Why am I getting a \"connection failed\" error window in my Jupyter notebook?
---

![Connection Failed error](images/connection-failed.png)

A common issue you'll see with a Jupyter notebook is a real scary and confusing one!

```
Connection failed
A connection to the notebook server could not be established. The notebook will continue trying to reconnect. Check your network connection or notebook server configuration.
```

This probably happened because you **shut down the notebook server.** This usually happens because you closed the Terminal/Command Prompt/Cmder/iTerm2 window where you were running the `jupyter notebook` command.

**To fix:** Run `jupyter notebook` again, and re-save the notebook once the server is started. You'll need to re-run all of the cells, but it should work.