;; This file provides light mode and dark mode functions for Emacs.

(provide 'lightdark-m8)

(defun set-light-mode ()
  (interactive)
  (set-background-color "#e9e4d2")
  (set-foreground-color "#333444")
  (set-face-attribute 'mode-line nil :background "#f3e8be" :foreground "#333444" :box '(:line-width 5 :color "#f3e8be"))
  (set-face-attribute 'mode-line-inactive nil :background "#e9e4d2" :foreground "#222222" :box '(:line-width 5 :color "#e9e4d2"))
)   
(defun set-dark-mode ()
  (interactive)
  (set-background-color "#171b25")
  (set-foreground-color "#ffffff")
  (set-face-attribute 'mode-line nil :background "#1c263f" :foreground "#FFFFFF" :box '(:line-width 5 :color "#1c263f"))
  (set-face-attribute 'mode-line-inactive nil :background "#171b25" :foreground "#aaaaaa" :box '(:line-width 5 :color "#171b25"))
)
