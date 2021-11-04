---
title: Changing the Python version Jupyter uses
---

Sometimes you want to change the version of Python that Jupyter is using! Often this is because you want to make your command-line `python` command match the version that Jupyter is using.

Jupyter doesn't use the `PATH` variable to figure out which Python to use, it uses specific settings called **kernels**. As a result, if you upgrade or change Pythons on the command line, Jupyter might still be stuck in the past!

You can read more about [how this causes libraries to go missing](../jupyer-module-not-found), but we're just going to jump into changing it here. **Our process is only three quick steps:**

1. Confirm our Python version
2. Install the `ipykernel` package for managing Jupyter settings
3. Use `ipykernel` to change our default Jupyter

```bash
$ python --version
Python 3.10.0
$ python -m pip install ipykernel
$ python -m ipykernel install --user
Installed kernelspec python3 in /Users/soma/Library/Jupyter/kernels/python3
```

This **kernel** or **kernelspec** is the settings file that Jupyter uses to figure out what Python it should point to. Now it's updated, so everything should work great! Shut down your Jupyter notebook server, start a new one, and you'll be good to go.

> When I say "shut down your Jupyter notebook server," I don't mean close your notebook tab: that isn't enough! You need to actually turn off and restart the entire Jupyter server. Use Ctrl+C to shut it down from the command line.

### Double-checking the kernel installed correctly

If we're nosy or suspicious, we could actually look at the kernel's details. Read the last line of the output to see where the kernelspec (kernel specification) lives:

```
$ python -m ipykernel install --user
Installed kernelspec python3 in /Users/soma/Library/Jupyter/kernels/python3
```

The settings are stored in a file called `kernel.json` inside of this folder. To check up on the details, we can use the `cat` command.

```bash
$ cat /Users/soma/Library/Jupyter/kernels/python3/kernel.json 
{
 "argv": [
  "/Users/soma/.pyenv/versions/3.10.0/bin/python",
  "-m",
  "ipykernel_launcher",
  "-f",
  "{connection_file}"
 ],
 "display_name": "Python 3 (ipykernel)",
 "language": "python",
 "metadata": {
  "debugger": true
 }
}
```

The important part here is `/Users/soma/.pyenv/versions/3.10.0/bin/python` - that's the exact Python file that Jupyter will be running!