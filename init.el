;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(evil gnu-elpa-keyring-update company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "SlateBlue3" :foreground "white smoke" :box nil)))))

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Evil
(require 'evil)
(evil-mode 1)

;; Disable unneeded stuff
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(fringe-mode -1)

;; Set ESC to C-g
(global-set-key (kbd "<escape>") 'keyboard-quit)

;; Load startup file
(view-file "~/.emacs.d/startup.txt")

;; Change to home directory
(cd "~")
