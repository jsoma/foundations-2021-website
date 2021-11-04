---
title: Installing and running Jupyter
---

## Installing Jupyter the simple way

If you'd like to install Jupyter, you can hopefully install it with `pip`:

```bash
pip install jupyter
```

While `pip` usually just installs libraries you can use in Python, in this case it installs a new command-line command, `jupyter`!

## Running Jupyter

To run Jupyter, you can use the `jupyter notebook` command.

```bash
$ jupyter notebook
[I 06:23:35.869 NotebookApp] Serving notebooks from local directory: /Users/soma/Dropbox/Soma/Curriculum/2021-foundations/site
[I 06:23:35.869 NotebookApp] The Jupyter Notebook is running at:
[I 06:23:35.869 NotebookApp] http://localhost:8888/?token=000f16e5f9e124712734fa66248fdcff0708a1ea8954b6a2
[I 06:23:35.869 NotebookApp]  or http://127.0.0.1:8888/?token=000f16e5f9e124712734fa66248fdcff0708a1ea8954b6a2
[I 06:23:35.869 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 06:23:35.907 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///Users/soma/Library/Jupyter/runtime/nbserver-25990-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/?token=000f16e5f9e124712734fa66248fdcff0708a1ea8954b6a2
     or http://127.0.0.1:8888/?token=000f16e5f9e124712734fa66248fdcff0708a1ea8954b6a2
```

It should automatically open a web browser for you that loads the notebook server. If not, just visit one of the URLs at the bottom: in this case, it's `http://localhost:8888/?token=000f16e5f9e124712734fa66248fdcff0708a1ea8954b6a2`.

## Exiting Jupyter

When you're done with Jupyter, you can use **Ctrl+C** to exit. When you press it, it'll ask if you want to shut down. Use `y` to say yes!

```
Shutdown this notebook server (y/[n])? y
[C 06:24:23.135 NotebookApp] Shutdown confirmed
[I 06:24:23.137 NotebookApp] Shutting down 0 kernels
```

> Make sure you've saved your work! Even though your notebooks might still be open in your browser, once you shut down your server they won't work any more.
