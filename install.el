(require 'package)

(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-refresh-contents)

(package-install 'htmlize)
