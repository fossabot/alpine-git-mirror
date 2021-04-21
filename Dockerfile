FROM c332030/alpine-git-ssh

ADD *.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]
RUN ["chmod", "+x", "/mirror.sh"]

ENTRYPOINT ["/entrypoint.sh"]
