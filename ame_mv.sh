#!/bin/bash

ame_location=$(which ame)

mv "$ame_location" .

ame_path=$(realpath ame)

# Вывод пути к fleet
echo "Путь к ame: $ame_path"
