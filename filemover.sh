#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию
files=("$source_directory"/*."$file_extension")

for file in "${files[@]}"; do
    filename=$(basename "$file" ".$file_extension")

    cp "$file" "$target_directory/$filename.$new_file_extension"

    echo "Скопирован файл: $(basename "$file") > $filename.$new_file_extension"
done
# Архивация исходных файлов.

