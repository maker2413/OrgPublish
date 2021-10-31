FROM alpine:latest

WORKDIR /opt/

RUN apk add emacs-nox

COPY install.el publish.el ./

RUN emacs --batch --load install.el

ENTRYPOINT ["emacs", "-Q", "--script"]

CMD ["publish.el"]
