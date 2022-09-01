# Go, Python!

Bootstrapping my Python projects by following the same steps each time sucks! 

This script creates a new project directory, installs a Pipenv, initialises a git repo, and creates some commonly used files and folders to speed up Python development. 

You can use it to install packages into your Pipenv and automatically pin packages to the version available at installation time in your Pipfile using some `grep` and `sed` magic. No more pesky `requests = "*"` in your Pipfiles! No more `pip freeze | grep <package name>` to figure out which version you just installed! 

## Requirements

* zsh
* Pipenv
* Git

## How to install

1. Add this directory to your PATH variable in `.bashrc`, `.zshrc` etc:

```echo "export PATH=\"\$PATH:$PWD\"" >> ~/.zshrc```

2. Restart your shell: `exec "$SHELL" -l`

## How to use

### Setting up a new Python project

Navigate to the root directory where you want to create your Python project and type `gopython` and follow the prompts.

### Installing packages into your Pipenv

In a folder with a `Pipenv`, issue `gopython -i <python package name>`.

This will use the `Pipenv` CLI to install the package and generate the `Pipfile.lock` file. It will also update your Pipfile with the version of the package that was just installed so that you don't have to manually specifcy its version in your Pipfile.  

Oh yeah. Go, Python, Go!

## Credit

* Thank you to `cdarke` and [their answer on stackoverflow](https://stackoverflow.com/a/30423437/11264156) for helping me deal with empty package name arguments.
