---
title: Startup files for shells
---

Each time you open the command line (aka the command prompt, the terminal, and a billion other names), it runs a few commands to set itself up.

This setup usually involves setting the `PATH` up so it knows where to find software, asking `pyenv` what the default Python should be, and a handful of other tasks. It isn't a fancy process, but it's necessary!

Depending on [which shell you use](../bash-vs-zsh), you'll have a different set of startup files.

* **bash** uses `.bash_profile` and `.bashrc`
* **zsh** uses `.zprofile` and `.zshrc`

Sometimes when you're setting up software, you'll see mentions of these kinds of files:

```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init --path)"\nfi' >> ~/.zshrc
```

If you ignore everything that you don't understand (which is most of it), you can probably guess that the code is doing something to `.zshrc` to help set up `pyenv` every time you start up a new shell. **And you'd be right!**

It's asking to edit `.zshrc` instead of `.bash_profile` because you're probably using a newer mac that [has zsh instead of bash](../bash-vs-zsh)!

> Notice there are two setup files for each shell! One includes the word `profile` and the other `rc`. Okay, now **forget about that forever.** There's no real difference between them, and they both get run.

You can easily edit these files in Visual Studio Code.