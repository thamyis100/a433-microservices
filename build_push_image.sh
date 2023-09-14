#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/thamyis100/devops-proyek_1/item-app:v1

# 4. Login ke GitHub Packages
docker login --username thamyis100 --password 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 ghcr.io

# 5. Mengunggah image ke GitHub Packages
docker push ghcr.io/thamyis100/item-app:v1
