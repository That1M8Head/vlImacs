(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(set-face-attribute 'default nil :height 125)
(if window-system
    (load-theme 'dracula t))
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(view-file "~/.emacs.d/startup.txt")
