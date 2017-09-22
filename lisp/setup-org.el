
(add-hook 'org-mode-hook 
	  (lambda ()
	    (progn
	      (message "Setting up org-mode")
	      (visual-line-mode)
	      )))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; (defun get-org-dir ()
;;   "Return the org directory based on the ~/.orgdirectory file, default to ~/Dropbox/Orgmode"
;;   (with-temp-buffer
;;     (insert-file-contents "~/.orgdirectory")
;;     (buffer-string)))

;; (replace-regexp-in-string "[ \t\n]*"

(setq org-directory "~/Dropbox/Orgmode")
(setq org-default-notes-file (concat org-directory "/index.org"))
(define-key global-map (kbd "M-<f6>") 'org-capture)

(provide 'setup-org)
