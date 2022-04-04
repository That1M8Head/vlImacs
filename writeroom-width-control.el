;;; writeroom-width-control.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Arsalan Kazmi
;;
;; Author: Arsalan Kazmi <sonicspeed848@gmail.com>
;; Maintainer: Arsalan Kazmi <sonicspeed848@gmail.com>
;; Created: March 04, 2022
;; Modified: March 04, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/kaz18001436/writeroom-width-control
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(require 'writeroom-mode)

(define-key writeroom-mode-map (kbd "<C-up>") #'writeroom-increase-width)
(define-key writeroom-mode-map (kbd "<C-down>") #'writeroom-decrease-width)

(provide 'writeroom-width-control)

;;; writeroom-width-control.el ends here
