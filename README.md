# Go, Python!

Bootstrapping my Python projects by following the same steps each time sucks! 

This script creates a new project directory, installs a Pipenv, initialises a git repo, and creates some commonly used files and folders to speed up Python development. 

## Requirements

* Bash
* Pipenv
* Git

## How to install

1. Add this directory to your PATH variable in `.bashrc`, `.zshrc` etc:

```echo "export PATH=\"\$PATH:$PWD\"" >> ~/.zshrc```

2. Restart your shell: `exec "$SHELL" -l`

## How to use

Navigate to the root directory where you want to create your Python project and type `go-python.sh` and follow the prompts.

Oh yeah. Go, Python!
