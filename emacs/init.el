;; emacs initialization

(package-initialize)

(setq user-full-name "Soren Soe"
      user-mail-address "2106410+stsoe@users.noreply.github.com")

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

;; Permanently force Emacs to indent with spaces, never with TABs
(setq-default indent-tabs-mode nil)

(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
