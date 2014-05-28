
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; act like we've been here before
(setq inhibit-startup-message t)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Are we on windows?
(setq is-windows (equal system-type 'windows-nt))

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Write backup files to own directory
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; act like we've been here before
(setq inhibit-startup-message t)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Are we on windows?
(setq is-windows (equal system-type 'windows-nt))

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Set Font
(set-face-attribute 'default nil :font  "Anonymous Pro-8" )

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Setup extensions
(eval-after-load 'org '(require 'setup-org))
(eval-after-load 'web-mode '(require 'setup-web-mode))
(eval-after-load 'ledger-mode '(require 'setup-ledger-mode))

;; Language specific setup files
(eval-after-load 'js2-mode '(require 'setup-js2-mode))
(eval-after-load 'php-mode '(require 'setup-php-mode))
(eval-after-load 'css-mode '(require 'setup-css-mode))
(eval-after-load 'less-css-mode '(require 'setup-less-css-mode))
(eval-after-load 'markdown-mode '(require 'setup-markdown-mode))

;; Map files to modes
(require 'mode-mappings)

;; Client specific setup
(require 'setup-hes)

;; Misc
(require 'appearance)

;; Smart Tabs
; (require 'smart-tabs-mode)
; (smart-tabs-insinuate 'javascript)

; (require 'my-misc)
; (when is-mac (require 'mac))

(put 'dired-find-alternate-file 'disabled nil)

; Read in changes to files from disk
(global-auto-revert-mode 1)

; Use the arrow keys to change windows
(windmove-default-keybindings)
