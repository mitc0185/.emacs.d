
(add-hook 'org-mode-hook 
	  (lambda ()
	    (progn
	      (message "Setting up org-mode")
	      (visual-line-mode)
	      )))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-directory "~/Dropbox/Orgmode")
(setq org-default-notes-file (concat org-directory "/index.org"))
(define-key global-map (kbd "M-<f6>") 'org-capture)

(provide 'setup-org)
