#!/bin/sh

set -e

cd ~
pwd
ls -alh

ls -alh .ssh

sh -c "/init-git-ssh.sh $*"
sh -c "/mirror.sh $*"
