#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/thamyis100/devops-proyek_1/item-app:v1

# 4. Login ke GitHub Packages
docker login ghcr.io -u thamyis100 -p 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

# 5. Mengunggah image ke GitHub Packages
docker push ghcr.io/thamyis100/devops-proyek_1/item-app:v1
