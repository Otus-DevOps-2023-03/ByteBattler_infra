#!/bin/sh
apt update
echo "sleep 3m for install updates"; sleep 5m; echo "start install ruby"
apt install -y ruby-full ruby-bundler build-essential
