;;; init.el --- My emacs config
;;; Commentary:
;;; Code:
(setq inhibit-startup-message t)
(global-linum-mode t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)


;; theme
(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'frappe)
(catppuccin-reload)


;; shortcuts
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-k") 'shrink-window)
(global-set-key (kbd "M-j") 'enlarge-window)
(global-set-key (kbd "M-k") 'shrink-window-horizontally)
(global-set-key (kbd "M-h") 'enlarge-window-horizontally)


;; packages
(require 'package)
(setq package-enable-at-startup 0)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package auto-complete
  :ensure t
  :init (progn
	  (ac-config-default)
	  (global-auto-complete-mode t)))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package ace-window
  :ensure t)

(use-package evil
  :ensure t
  :init (evil-mode t))

(use-package treemacs
  :ensure t)

(use-package catppuccin-theme
  :ensure t)

(use-package rainbow-mode
  :ensure t)


;;; init.el ends here


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-mode flycheck evil catppuccin-theme catppuccin which-key use-package try treemacs auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
