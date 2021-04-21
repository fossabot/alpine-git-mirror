#!/bin/sh

set -e

SOURCE_REPO=$1
DESTINATION_REPO=$2

echo "SOURCE=$SOURCE_REPO"
echo "DESTINATION=$DESTINATION_REPO"

echo mirror.sh
ls -lh ~/.ssh
cat ~/.ssh/id_rsa

git clone --mirror "$SOURCE_REPO" && cd "$(basename "$SOURCE_REPO")"
git remote set-url --push origin "$DESTINATION_REPO"

git fetch -p origin

# Exclude refs created by GitHub for pull request.
git for-each-ref --format 'delete %(refname)' refs/pull | git update-ref --stdin
git push --mirror
