#!/bin/bash
git init
git remote add <repo-name>  https://github.com/thecloudgarage/<repo-name>.git
git add .
git commit -m 'new commit'
git push -f <repo-name> master
