(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package) (package-refresh-contents) (package-install 'use-package))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(setq config-file "~/.config/emacs/config.org")
(org-babel-load-file (expand-file-name config-file))

(setq ring-bell-function 'ignore)

(global-prettify-symbols-mode t) 

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company company-mode telephone-line evil-org evil-magit beacon which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
