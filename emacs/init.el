;; emacs initialization

(package-initialize)

(setq user-full-name "Soren Soe"
      user-mail-address "2106410+stsoe@users.noreply.github.com")

(add-to-list 'load-path
             (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))

;; customiztions
(setq custom-file
      (concat (expand-file-name user-emacs-directory) "custom.el"))
(load custom-file 'noerror)

;; disable scroll bar
(scroll-bar-mode -1)

;; legacy next-error
(global-set-key "\C-x\C-n" 'next-error)

;; Add colors
(global-font-lock-mode 1)

;; Automatically reload files after they've been modified
;; (typically in Visual C++)
(global-auto-revert-mode 1)

;; Highlight regions for cutting or copying
(setq transient-mark-mode t)

;; Highlight matching parens
(setq show-paren-mode t)

;; To disable the overriding of standard Emacs binding by CUA mode,
;; while retaining the other features of CUA mode described below, set
;; the variable cua-enable-cua-keys to nil.
(setq cua-enable-cua-keys nil)

;; Permanently force Emacs to indent with spaces, never with TABs
(setq-default indent-tabs-mode nil)

;; This variable controls the type of device used to communicate with
;; asynchronous subprocesses. If it is non-nil, then ptys are used,
;; when available. Otherwise, pipes are used.
;; https://github.com/microsoft/WSL/issues/4412
(setq-default process-connection-type nil)

(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; use for install of 's 'dash 'editorconfig 'f needed by copilot
;; M-x package-install RET package RET
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; For tree-sitter see: https://emacs-tree-sitter.github.io/installation/
;; M-x tree-sitter-mode
;; For syntax highlighting use M-x tree-sitter-hl-mode 
(setq my-packages
      '(editorconfig
        s
        dash
        f
        ))

(dolist (p my-packages)
        (unless (package-installed-p p)
          (package-install p)))

(require 'init-copilot)
