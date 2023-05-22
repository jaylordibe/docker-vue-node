#!/usr/bin/env bash
set -e

# Update package index
echo "==================== UPDATING PACKAGE INDEX ===================="
apt-get update

# Install common software
echo "==================== INSTALLING COMMON SOFTWARE ===================="
export DEBIAN_FRONTEND=noninteractive
apt-get install -y \
    build-essential \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    software-properties-common \
    wget \
    curl \
    zip \
    unzip \
    nano \
    cron \
    git

# Install nginx
echo "==================== INSTALLING NGINX ===================="
apt-get update
apt-get install -y nginx

# Install Node.js
echo "==================== INSTALLING NODE.JS ===================="
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs
npm install -g npm

# Install supervisor
apt-get install -y supervisor
mkdir -p /var/log/supervisor

# Clean
echo "==================== CLEANING FILES ===================="
rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*
