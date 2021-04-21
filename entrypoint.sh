#!/bin/sh

set -e

echo entrypoint.sh
echo "I am $(whoami)"

sh -c "/init-git-ssh.sh $*"
sh -c "/mirror.sh $*"
