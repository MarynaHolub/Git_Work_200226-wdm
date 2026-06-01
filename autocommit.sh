#!/bin/bash

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1
then
    echo "Error: current directory is not a Git repository"
    exit 1
fi

git add .

if git diff --cached --quiet
then
    echo "No changes to commit"
    exit 0
fi

git commit -m "Автоматический коммит $(date '+%Y-%m-%d %H:%M:%S')"

echo "Changes committed successfully"
