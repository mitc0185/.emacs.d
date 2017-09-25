
; (global-set-key [f5] 'slime-js-reload)
;(add-hook 'js2-mode-hook
;           (lambda ()
;            (slime-js-minor-mode 1)))

(add-hook 'js2-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (setq js2-strict-missing-semi-warning nil)
	    ))

(provide 'setup-js2-mode)
