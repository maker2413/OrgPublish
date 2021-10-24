(package-initialize)

(require 'htmlize)
(require 'ox-publish)

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "org-files"
             :recursive t
             :base-directory "/opt/OrgFiles"
             :publishing-directory "/opt/OrgFiles/web-site"
             :publishing-function 'org-html-publish-to-html)))

;; Generate the site output
(org-publish-all t)
