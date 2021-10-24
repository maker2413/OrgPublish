FROM alpine:latest

WORKDIR /opt/

RUN apk add emacs-nox

COPY install.el publish.el entrypoint.sh ./

RUN emacs --batch --load install.el

CMD ["emacs" "-Q" "--script" "/opt/publish.el"]
