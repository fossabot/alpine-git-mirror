#!/bin/sh

set -e

sh -c "/init-git-ssh.sh $*"
sh -c "/mirror.sh $*"
