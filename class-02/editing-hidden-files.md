---
title: How to edit hidden files
---

## How to edit hidden files like `~/.bash_profile` in Visual Studio Code

There are two ways (and probably more!) to open hidden files in Visual Studio Code.

### Drag and drop

1. Open up Finder
2. Use the **Command+Shift+.** trick (from [listing hidden files](../listing-hidden-files/)) to show all files
3. Drag the hidden file to the Visual Studio Code icon.

### Using the open menu

1. Open up VS Code
2. Go to **File > Open**
3. When you're in the right directory, press **Command+Shift+.** to have hidden files show up (tip: they might already be visible!)
4. Click the file and open it!

### From the command line

1. Install the `code` command [see the VS Code documentation instructions](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
2. From the directory, type `code .bash_profile` (substitute whatever name of the file you want to edit) and it will open in VS Code!

## How to edit hidden files from the command line

### Using a command-line text editor

There are a lot of text editors that operate just on the command line. A few are `nano`, `vim`, and `emacs`.

1. Navigate to where your file is located (in this example, we're editing `.bash_profile`)
2. Type `nano .bash_profile` and hit enter
3. `.bash_profile` will be opened up in nano!
4. When you'er ready, follow the instructions at the bottom of the screen to save and exit.

> **Tip:** The `^` means "Control", so for `^X` to exit you'll hold down the control key and press the X key.

### Going from the command line to VS Code

You might be using the command line but want to hop right into editing a file in VS Code.

1. Install the `code` command [see the VS Code documentation instructions](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
2. From the directory, type `code .bash_profile` (substitute whatever name of the file you want to edit) and it will open in VS Code!
