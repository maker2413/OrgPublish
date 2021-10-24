#!/bin/sh

mkdir -p /opt/OrgFiles/web-site

emacs -Q --script /opt/publish.el
