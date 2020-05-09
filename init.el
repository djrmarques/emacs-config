(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package) (package-refresh-contents) (package-install 'use-package))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setq org-config-file "~/.config/emacs/config.org")
(setq init-file "~/.emacs")
(setq stumpwmconfig "~/.config/stumpwm/config")
(org-babel-load-file (expand-file-name org-config-file))

(setq ring-bell-function 'ignore)

(global-prettify-symbols-mode t) 

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
