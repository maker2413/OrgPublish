FROM alpine:latest

RUN mkdir /opt/OrgFiles

WORKDIR /opt/OrgFiles

RUN apk add emacs-nox

COPY install.el publish.el /opt/

RUN emacs --batch --load /opt/install.el

ENTRYPOINT ["emacs", "-Q", "--script"]

CMD ["/opt/publish.el"]
