#!/bin/bash

# Increment the bump file
current=$(cat Documentation/_bump)
new=$((current + 1))
echo $new > Documentation/_bump

# Add all changes, amend the commit, and force push
git add .
git commit --amend --no-edit
git push -f

echo "Bumped from $current to $new and pushed changes"