(package-initialize)

(require 'htmlize)
(require 'ox-publish)

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "org-files"
             :recursive t
             :base-directory "/opt/OrgFiles"
             :html-validation-link nil             ;; Dont show validation link
             :publishing-directory "/opt/OrgFiles/web-site"
             :publishing-function 'org-html-publish-to-html
             :section-numbers nil                  ;; Don't show section numbers
             :with-author nil)))                   ;; Don't show author

;; Generate the site output
(org-publish-all t)
