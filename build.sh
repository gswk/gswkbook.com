#!/bin/bash

echo "Rebuilding site and pushing to GitHub"

# Rebuild site using our theme
hugo -t kraiklyn

# Push to site repo
cd public
git add .
git commit -m "Site rebuilt at `date`"
git push origin master

cd ..