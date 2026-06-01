#!/bin/bash

#!/bin/bash

if [ ! -d ".git" ]; then
	echo "Это не git репозиторий"
	exit 1
fi

git add .

if [ ! git diff-index --quit HEAD ]; then
	echo "Нет изменений!"
	exit 1
	
else 
	git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
	echo "успешном фиксировании изменений!"
fi
