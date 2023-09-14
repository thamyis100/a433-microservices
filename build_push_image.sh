#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/thamyis100/devops-proyek_1/item-app:v1

# 4. Login ke GitHub Packages
docker login docker.pkg.github.com -u thamyis100 -p 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

# 5. Mengunggah image ke GitHub Packages
docker push docker.pkg.github.com/thamyis100/devops-proyek_1/item-app:v1
