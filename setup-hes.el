

(add-hook 'js2-mode-hook
	  (lambda ()
	    (if (string-prefix-p "/home/erikm/Projects/HES" (file-name-directory (buffer-file-name)))
		(progn
		  (message "Setting indent for HES .js development")
		  (setq-default tab-width 4)
		  (setq indent-tabs-mode t))
	      (message (concat "Did not match project " (file-name-directory (buffer-file-name))))
	      )))

(provide 'setup-hes)


	
