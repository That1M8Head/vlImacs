;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes t)
 '(evil-undo-system 'undo-fu)
 '(inhibit-startup-screen t)
 '(mouse-1-click-follows-link t)
 '(package-selected-packages
   '(ivy-posframe all-the-icons-ivy counsel ivy evil-leader dashboard centaur-tabs doom-modeline doom-themes org-bullets undo-fu writeroom-mode mixed-pitch org-variable-pitch dmenu auto-complete python-mode corfu pandoc-mode pandoc emojify org-appear markdown-preview-eww markdown-preview-mode markdown-mode magit powerline org-preview-html ## evil gnu-elpa-keyring-update company))
 '(scalable-fonts-allowed t))

;; Load path
(add-to-list 'load-path "~/.emacs.d/load/")

;; Set theme
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t 
        doom-themes-enable-italic t)
  (load-theme 'doom-dracula t)
  (doom-themes-neotree-config)
  (setq doom-themes-treemacs-theme "doom-atom")
  (doom-themes-treemacs-config)
  (doom-themes-org-config))

;; Clock
(display-time-mode 1)

;; Highlight lines
(global-hl-line-mode 1)

;; C indentation
(setq c-default-style "linux"
      c-basic-offset 4)

;; Tab width
(setq tab-width 4)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Functions for config
(defun edit-config ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(defun reload-config ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

;; Evil
(require 'evil)
(require 'evil-leader)
(global-evil-leader-mode)
(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "ff" 'counsel-find-file
    "fs" 'save-buffer
    "fS" 'write-file
    "bb" 'ivy-switch-buffer
    "br" 'revert-buffer
    "rc" 'reload-config
    "fp" 'edit-config
    "bk" 'kill-this-buffer
    "qq" 'save-buffers-kill-emacs
    "tz" 'writeroom-mode
    "j" 'centaur-tabs-backward
    "k" 'centaur-tabs-forward
    "h" help-map
    ))
(evil-mode 1)

;; Disable unneeded stuff
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(fringe-mode -1)

;; Set backup directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Pandoc hook
(add-hook 'markdown-mode-hook 'pandoc-mode)

;; Visual line mode
(global-visual-line-mode t)

;; Centaur tabs
(centaur-tabs-mode t)

;; Line numbers
(setq display-line-numbers-type 'relative)
(display-line-numbers-mode)

;; Auto complete
(auto-complete-mode 1)

;; Load path
(add-to-list 'load-path "~/.emacs.d/load/")

;; Display images in Org by default
(add-hook 'org-mode-hook 'org-display-inline-images)

;; Company mode
(add-hook 'after-init-hook 'global-company-mode)

;; Font
(set-face-attribute 'default nil :font "Iosevka Extended" :height 110)
(set-face-attribute 'variable-pitch nil :font "Martel")

;; Doom modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 30))

;; Dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; Visual line mode
(global-visual-line-mode t)

;; Writeroom
(setq writeroom-bottom-divider-width 0)
(setq writeroom-extra-line-spacing 0.3)
(setq writeroom-mode-line t)
(setq writeroom-width 100)
(require 'writeroom-width-control)

;; Ivy
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(require 'ivy-posframe)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
(setq ivy-posframe-border-width 15)
(ivy-posframe-mode 1)
(ivy-mode t)

;; Org
(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-appear-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'mixed-pitch-mode)
(require 'org-starless)

(defun org-heading-plus-size ()
  "Sets font sizes for Org headings, title and info."
  (set-face-attribute 'org-level-3 nil :height 1.2)
  (set-face-attribute 'org-level-2 nil :height 1.3)
  (set-face-attribute 'org-level-1 nil :height 1.5)
  (set-face-attribute 'org-document-title nil :height 1.7)
  (set-face-attribute 'org-document-info nil :height 1.2)
  (setq-default org-ellipsis '" ▼ "))
(add-hook 'org-mode-hook 'org-heading-plus-size)
(add-hook 'org-mode-hook #'org-starless-mode)

(setq org-indent-indentation-per-level 1)
(setq org-adapt-indentation nil)

;; Count words
(global-set-key (kbd "M-=") 'count-words)
