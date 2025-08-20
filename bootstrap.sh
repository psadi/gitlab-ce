#!/usr/bin/env bash

set -eux

GITLAB_DIR="$HOME/.local/srv/gitlab"
CONFIG_DIR="$GITLAB_DIR/config"
DATA_DIR="$GITLAB_DIR/data"
LOGS_DIR="$GITLAB_DIR/logs"

mkdir -p "$CONFIG_DIR" "$DATA_DIR" "$LOGS_DIR"

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y git acl ca-certificates curl podman podman-compose

GITLAB_REPO="https://github.com/psadi/gitlab-ce.git"
git clone "$GITLAB_REPO" "$HOME/gitlab"

cd "$HOME/gitlab"
