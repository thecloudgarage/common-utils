#!/bin/bash
git init
git remote add <repo-name>  https://github.com/thecloudgarage/<repo-name>.git
git branch <branch-name>
git add .
git commit -m 'branch-name-message'
git push -f <repo-name> <branch-name>
