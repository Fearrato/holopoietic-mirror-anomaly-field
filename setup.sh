#!/usr/bin/env bash
# Initialize Git repo, commit, and push to remote

# Ensure script exits on error
set -e

if [ -z "$REMOTE_URL" ]; then
  echo "Usage: REMOTE_URL=git@github.com:user/repo.git bash setup.sh"
  exit 1
fi

# Initialize git
git init
git add .
git commit -m "Initial HMAF framework"

echo "Adding remote: $REMOTE_URL"
git remote add origin "$REMOTE_URL"

echo "Pushing to origin main"
git branch -M main
git push -u origin main

echo "Repository initialized and pushed."
