#!/usr/bin/env bash

if [[ -e docker-compose.yml ]];then
    echo "Docker compose file already exists, skipping..."
    exit 0
fi

cp ./base/docker-compose.base.yml docker-compose.yml

db_pass=$(date +%s%3N | sha256sum)
web_pass=$(date +%s%3N | sha256sum)

db_pass=${db_pass:0:24}
web_pass=${web_pass:0:24}

sed -i "s/changeme_db/${db_pass}/g" docker-compose.yml
sed -i "s/changeme_web/${web_pass}/g" docker-compose.yml