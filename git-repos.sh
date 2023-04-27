#!/bin/bash

GHUSER=matthew-08; curl "https://api.github.com/users/$GHUSER/repos?per_page=100" | 
grep -o 'git@[^"]*' | awk -F '/' '{gsub(/\.git/, ""); print $2}'
