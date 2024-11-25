#!/bin/sh
docker buildx bake --push --set "*.platform=linux/amd64" builder latest