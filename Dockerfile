FROM c332030/alpine-git-ssh

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
