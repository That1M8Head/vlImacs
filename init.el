;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mail-face nil)
 '(inhibit-startup-screen t)
 '(mouse-1-click-follows-link t)
 '(package-selected-packages
   '(corfu pandoc-mode pandoc emojify org-appear markdown-preview-eww markdown-preview-mode markdown-mode magit powerline org-preview-html ## evil gnu-elpa-keyring-update company))
 '(scalable-fonts-allowed t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-button ((t (:background "#3b4263" :foreground "white" :box (:line-width 2 :color "#3b4263")))))
 '(custom-button-mouse ((t (:inherit custom-button :background "#4443ac" :box (:line-width 2 :color "#4443ac")))))
 '(custom-button-pressed ((t (:background "background" :foreground "#aaaaaa" :box (:line-width 2 :color "#1f2125")))))
 '(link ((t (:foreground "white" :underline t))))
 '(link-visited ((t (:inherit link :foreground "#888888"))))
 '(minibuffer-prompt ((t (:foreground "cyan"))))
 '(mode-line ((t (:background "#121315" :foreground "white" :box (:line-width 5 :color "#121315")))))
 '(mode-line-highlight ((t (:box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#1f2125" :foreground "#aaaaaa" :box (:line-width 5 :color "#1f2125") :weight light))))
 '(tab-bar ((t (:background "#121315" :foreground "foreground"))))
 '(tab-bar-tab ((t (:inherit tab-bar :background "background" :box (:line-width 2 :color "#1f2125")))))
 '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#121315" :foreground "white" :box (:line-width 3 :color "#121315"))))))

;; Set colours 
(when window-system (set-background-color "#1f2125"))
(set-foreground-color "#ffffff")

;; Clock
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

;; Set backup directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Pandoc hooks for Org and Markdown
(add-hook 'org-mode-hook 'pandoc-mode)
(add-hook 'markdown-mode-hook 'pandoc-mode)

;; Line numbers mode
(global-display-line-numbers-mode t)

;; Visual line mode
(global-visual-line-mode t)

;; Tab bar mode
(tab-bar-mode 1)

;; Load startup file
(view-file "~/.emacs.d/startup.txt")

;; Go to home directory
(cd "~")

;; Font
(setq warning-minimum-level :error)
(set-face-attribute 'default nil :font "Source Code Pro")
