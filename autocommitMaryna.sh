#!/bin/bash

if [ ! -d ".git" ]; then
    echo "Это не git репозиторий"
    exit 1
fi

git add .

if git diff-index --quiet HEAD --; then
    echo "Нет изменений!"
    exit 0
else
    git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
    echo "Изменения успешно зафиксированы!"
fi
