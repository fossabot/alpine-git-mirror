#!/bin/sh

echo entrypoint.sh ~
ls -als

sh -c "/init-git-ssh.sh $*"
sh -c "/mirror.sh $*"
