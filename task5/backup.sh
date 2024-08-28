#!/bin/bash
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
DB_NAME=$DB_NAME
BACKUP_DIR="/opt/backup"
TIMESTAMP=$(date +"%F-%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup-$DB_NAME-$TIMESTAMP.sql"
mkdir -p $BACKUP_DIR
docker run --rm \
    --network=shvirtd-example-python_backend \
    -e MYSQL_USER=$DB_USER \
    -e MYSQL_PASSWORD=$DB_PASSWORD \
    -e MYSQL_DATABASE=$DB_NAME \
    schnitzler/mysqldump \
    mysqldump --opt -h db -u $DB_USER -p"$DB_PASSWORD" $DB_NAME > $BACKUP_FILE
