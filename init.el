;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mail-face nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(org-appear markdown-preview-eww markdown-preview-mode markdown-mode magit powerline org-preview-html ## evil gnu-elpa-keyring-update company))
 '(scalable-fonts-allowed t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#1C263F" :foreground "white" :box (:line-width 5 :color "#1C263F")))))
 '(mode-line-highlight ((t (:box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#171b25" :foreground "#aaaaaa" :box (:line-width 5 :color "#171b25") :weight light)))))

;; Colours
(set-background-color "#171b25")
(set-foreground-color "white")

(display-time-mode 1)

;; C indentation
(setq c-default-style "linux"
      c-basic-offset 4)

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

;; Load startup file
(view-file "~/.emacs.d/startup.txt")

;; Change to home directory
(cd "~")

;; Font
(setq warning-minimum-level :error)
(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :font "Source Code Pro 11")
  (set-face-attribute 'default nil :font "Source Code Pro 15"))
