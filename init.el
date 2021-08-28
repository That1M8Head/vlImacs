;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Disable unneeded stuff
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(fringe-mode -1)

;; Added by Custom
(custom-set-variables
 '(inhibit-startup-screen t)
 '(package-selected-packages '(gnu-elpa-keyring-update company)))
(custom-set-faces
 '(mode-line ((t (:background "SlateBlue3" :foreground "white smoke" :box nil)))))

;; Set ESC to C-g
(global-set-key (kbd "<escape>") 'keyboard-quit)

;; Load startup file
(view-file "~/.emacs.d/startup.txt")

;; Change to home directory
(cd "~")
