#!/usr/bin/env bash
set -euo pipefail

# Configure git identity (required for git operations inside the container).
git config --global user.name  "${GIT_USER:-agent}"
git config --global user.email "${GIT_EMAIL:-agent@localhost}"

# Configure dolt identity (required for dolt commit operations).
dolt config --global --add user.name  "${GIT_USER:-agent}"
dolt config --global --add user.email "${GIT_EMAIL:-agent@localhost}"

exec "$@"
