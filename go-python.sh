#!/usr/bin/env bash

printf "=== Go Python! ===\n\n"

# check if Pipenv in installed
if ! command -v pipenv &> /dev/null 
then 
    printf "Please install Pipenv before proceeding\n"
    exit
fi

if ! command -v git &> /dev/null
then
    printf "Please install git before proceeding\n"
    exit
fi

printf "What do you want your project directory to be called?\n"
read project_name
mkdir $project_name
printf "created $PWD/$project_name\n"

cd $project_name
printf "Initialising git repository...\n"
git init &> /dev/null

printf "Initialising Pipenv...hold on...\n"
pipenv install
pipenv run pipenv install --dev pytest 

# create files and folders commonly used in python projects
touch main.py
printf "**/.env\n" > .gitignore
printf "**/__pychache__" >> .gitignore
mkdir src tests

printf "Dropping you into your Pipenv. Happy Python-ing!"
pipenv shell
