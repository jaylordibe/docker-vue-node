#!/usr/bin/env bash
set -e

# Push to docker repository
docker tag docker-vue-node-vue-node:latest jaylordibe/vue-node:18
docker push jaylordibe/vue-node:18

# Push to github repository
git add .
git commit -m "Updated docker image"
git push
