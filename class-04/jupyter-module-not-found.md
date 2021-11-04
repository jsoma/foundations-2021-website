---
title: Fixing Module Not Found errors with Jupyter notebook
---

## The quick answer

If you hate reading, [you can find a quick fix for missing modules here](../quick-fix-jupyter-module-not-found).

## The ModuleNotFoundError problem in Jupyter notebook

When you're using Python, you end up using a lot of libraries. Maybe `requests` for grabbing things from the internet, for example!

A very, very common problem works like this:

1. You used `pip install` to install a library (example: `pip install requests`)
2. You try to import the library in Jupyter notebook, and it tells you it can't find it! For example, `ModuleNotFoundError: No module named 'requests'` 

To make things even more confusing: maybe you try to run a script from the command line with `import requests` and it works perfectly fine! Let's talk about what is going on.

### But first: double check

If you're getting `ModuleNotFoundError` in Jupyter, first double-check that you installed the package with `pip install`. **Triple-check you didn't misspell the package name in your import,** otherwise you'll waste a lot of time reading this page.

## Why it happens: multiple Python versions

You probably have multiple versions of Python on your computer. This isn't weird or bad, it's super normal! Maybe your version of OS X came with 2.7 preinstalled, or you installed Anaconda at some point, or you used `brew install` and some other software hid a very specific version on your computer. 

You usually only notice this when you upgrade Python versions: when you try to run scripts that used to work, suddenly you get `ModuleNotFoundError` and need to install things all over again!

The first thing to check on is whether `pip` is using the same Python as Jupyter.

## How to tell which version of Python `pip` is using

When you use `pip install requests`, though, it installs the requests library **for only one version of Python**. You can usually tell which version by running `pip --version`

```bash
$ pip --version
pip 21.2.3 from /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages/pip (python 3.10)
```

If I pay close attention to the output, you can see that **my default pip version is associated with Python 3.10.0 that I installed from with pyenv**.

If it isn't very clear, you can also try `pip list -v` to see exactly where things were installed.

```bash
soma@MacBook-Pro site % pip list -v
Package            Version   Location                                                        Installer
------------------ --------- --------------------------------------------------------------- ---------
certifi            2021.10.8 /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
charset-normalizer 2.0.7     /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
idna               3.3       /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
pip                21.2.3    /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
requests           2.26.0    /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
setuptools         57.4.0    /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
six                1.16.0    /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
urllib3            1.26.7    /Users/soma/.pyenv/versions/3.10.0/lib/python3.10/site-packages pip
```

Again it's pretty clear it's **Python 3.10.0 from pyenv**.

## How to tell which version of Python Jupyter is using

When you're in Jupyer and run a notebook, the notebook is **running a specific Python on your computer**. Oftentimes, it isn't even the same version as which you run `python` from the command line!

Technically, Jupyter uses something called a **kernel** or **kernelspec** to explain which Python it should be talking to. You can get a list of kernels by running `jupyter kernelspec list` (although it isn't very helpful).

```bash
$ jupyter kernelspec list       
Available kernels:
  anaconda-base    /Users/soma/Library/Jupyter/kernels/anaconda-base
  huggingface      /Users/soma/Library/Jupyter/kernels/huggingface
  python3          /Users/soma/Library/Jupyter/kernels/python3
```

From this example, we see I actually have three kernels! I have a few different Pythons I like to use with Jupyter, so they each have their own kernel. **But how do I know which Python my Python 3 kernel is pointing to?**

> **Cheating hack:** If you like to look at JSON, you can combine this step and the next step with `jupyter kernelspec list --json`.

### One kernel at a time

The output of `jupyter kernelspec list` only tells me the _folders_ that each kernel lives in. To actually get the _details_ of the kernel, I need to look at a specific file in that folder.

* We know the kernel is in `/Users/soma/Library/Jupyter/kernels/python3`
* So we need to look at `/Users/soma/Library/Jupyter/kernels/python3/kernel.json`

```bash
$ cat /Users/soma/Library/Jupyter/kernels/python3/kernel.json
{
 "argv": [
  "/Users/soma/.pyenv/versions/3.8.2/bin/python",
  "-m",
  "ipykernel_launcher",
  "-f",
  "{connection_file}"
 ],
 "display_name": "Python 3",
 "language": "python"
}
```

The kernel is called "Python 3" in Jupyter, but looking at the kernel files shows it's specifically attached to Python 3.8.2 (probably because that's how we installed Jupyter).

If `pip` works for **3.10.0**, but Jupyter uses **3.8.2**, installed packages will nevers how up in Jupyter!

## How to change the "Python 3" that Jupyter notebook uses

Maybe we enjoyed Python 3.8.2 in Jupyter before, but now we want it to use Python 3.10.0.

> **Warning-ish:** if you installed packages for your old Python you'll need to reinstall them to have them work in the upgraded Jupyter.

To change the default Python 3 for Jupyter, you need to use the `ipykernel` package. We'll use go through three steps:

1. Confirm that `python` is the version we think it is
2. Use `pip` to install the `ipykernel` package
3. Have Python update the kernel with `python -m ipykernel install --user`

It looks like this:

```bash
$ python --version
Python 3.10.0
$ pip install ipykernel
$ python -m ipykernel install --user
Installed kernelspec python3 in /Users/soma/Library/Jupyter/kernels/python3
```

We see it installed to `/Users/soma/Library/Jupyter/kernels/python3`, the same location as our previous kernelspec. We can now look at the revised `kernel.json` file to see if it's pointing at the right Python version:

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

There we go!

> **Potential problem:** If your `python` command does not use the same version of python as your `pip` command this command won't work. But if your computer is set up right they definitely do!