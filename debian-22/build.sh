#!/bin/sh
docker buildx bake --push --set "*.platform=linux/arm64/v8,linux/amd64" latest

docker pull nethost/node:22.3-debian && docker tag nethost/node:22.3-debian registry.cn-shanghai.aliyuncs.com/bridge8/node:22.3-debian && docker push registry.cn-shanghai.aliyuncs.com/bridge8/node:22.3-debian
