(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(global-font-lock-mode t nil (font-lock))
 '(ignored-local-variable-values
   '((eval progn
           (c-set-offset 'innamespace '0)
           (c-set-offset 'inline-open '0))))
 '(package-selected-packages
   '(markdown-preview-mode markdown-mode tree-sitter-langs tree-sitter f editorconfig s dash))
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; google chrome for default browser (needed for copilot-login)
;; appears not to work, just copy the URL from the emacs terminal
;; window and paste it into chrome
(setq browse-url-browser-function 'browse-url-chrome)
(setq browse-url-chrome-program "google-chrome-stable")

;(setq p4-init-file
;      (expand-file-name "p4.el" "~/.emacs.d"))
;(load-file p4-init-file)
