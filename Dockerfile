FROM alpine:latest

WORKDIR /opt/

RUN apk add emacs-nox

COPY install.el publish.el ./

RUN emacs --batch --load install.el

CMD "emacs" "-Q" "--script" "/opt/publish.el"
