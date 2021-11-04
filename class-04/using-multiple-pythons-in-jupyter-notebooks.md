---
title: Adding different Pythons versions in Jupyter notebooks
---

Sometimes you want to [completely upgrade the Python that Jupyer uses](../changing-jupyter-python/), but sometimes you think it would be nice to have *multiple versions of Python available in Jupyter*. It's pretty easy!

Before we get started, you'll want to switch to the python that you're interested in using in Jupyter. This might mean using `pyenv shell`, changing your `virtualenv`, or using a full path like `/Library/Frameworks/Python.framework/Versions/3.6/bin/python` instead of just `python`.

In these commands, we're going to go through three steps:

1. Confirm our Python version
2. Install the `ipykernel` package for managing Jupyter settings
3. Use `ipykernel` to add a Jupyter kernel with a specific name

```bash
$ python --version
Python 3.8.2
$ python -m pip install ipykernel
$ python -m ipykernel install --user --name python3.8.2 --display-name "Python 3.8.2" 
Installed kernelspec python3.8.2 in /Users/soma/Library/Jupyter/kernels/python3.8.2
```

Now when we start up a new notebook, we can now pick whether we want the default `Python 3` kernel or this special `Python 3.8.2` kernel! **Be sure to use all of the options:**

* If you don't use `--name`, it will overwrite your default `python3` kernelspec
* If you don't use `--display-name` it will be called `Python 3` and you'll get it confused with the default