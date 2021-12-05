#!/bin/bash
# git-interactive-merge
from=$1
to=$2
git checkout $from
git checkout -b ${from}_tmp
git rebase -i $to
# Above will drop you in an editor and pick the changes you want
git checkout $to
git pull . ${from}_tmp
git branch -d ${from}_tmp



# git checkout


git checkout master
git checkout exp1 path/to/file_a
git checkout exp2 path/to/file_b

# Save these files as a stash
git stash

# Merge stash with master
git merge stash




