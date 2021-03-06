;;; markdown-preview-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "markdown-preview-mode" "markdown-preview-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from markdown-preview-mode.el

(autoload 'markdown-preview-open-browser "markdown-preview-mode" "\
Open the `markdown-preview' in the browser." t nil)

(autoload 'markdown-preview-cleanup "markdown-preview-mode" "\
Cleanup `markdown-preview' mode." t nil)

(autoload 'markdown-preview-mode "markdown-preview-mode" "\
Markdown preview mode.

If called interactively, enable Markdown-Preview mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-preview-mode" '("markdown-preview-")))

;;;***

;;;### (autoloads nil nil ("markdown-preview-mode-pkg.el") (0 0 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markdown-preview-mode-autoloads.el ends here
