---
title: Quick fix for missing modules in Jupyter notebook
---

![No module named requests](images/missing-module.png)

Sometimes you get a `ModuleNotFoundError: No module named ...` error in Jupyter, but importing your libraries works fine on the command line. This is because the Python version Jupyter is using isn't the same as the one you use on the command line.

> Before you do what I suggest below, double-check you spelled your library's name correctly.

You can [read a full description here](../jupyter-module-not-found), or just run these commands:

```bash
pip install ipykernel
python -m ipykernel install --user 
```

Stop your server, start your server, and then you'll be good.