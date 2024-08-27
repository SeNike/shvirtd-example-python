#!/bin/bash

# Устанавливаем переменные
REPO_URL="https://github.com/SeNike/shvirtd-example-python.git"
DEST_DIR="/opt/shvirtd-example-python"

# Скачиваем репозиторий
git clone $REPO_URL $DEST_DIR

# Переходим в каталог репозитория
cd $DEST_DIR

# Запускаем Docker Compose
docker compose up -d
