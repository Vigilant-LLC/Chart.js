#!/bin/bash

if git diff-index --quiet HEAD --; then
  git checkout master
  git pull https://github.com/chartjs/Chart.js.git master
else
  printf "\nPlease make all commits before trying to pull from the original Chart.JS github project.\n\n"
  exit 0
fi
