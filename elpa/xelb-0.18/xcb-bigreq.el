;;; xcb-bigreq.el --- X11 BigRequests extension  -*- lexical-binding: t -*-

;; Copyright (C) 2015-2019 Free Software Foundation, Inc.

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file was generated by 'el_client.el' from 'bigreq.xml',
;; which you can retrieve from <git://anongit.freedesktop.org/xcb/proto>.

;;; Code:

(require 'xcb-types)

(defconst xcb:bigreq:-extension-xname "BIG-REQUESTS")
(defconst xcb:bigreq:-extension-name "BigRequests")
(defconst xcb:bigreq:-major-version 0)
(defconst xcb:bigreq:-minor-version 0)

(defclass xcb:bigreq:Enable
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)))
(defclass xcb:bigreq:Enable~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (~sequence :type xcb:CARD16)
   (length :type xcb:CARD32)
   (maximum-request-length :initarg :maximum-request-length :type xcb:CARD32)))



(provide 'xcb-bigreq)

;;; xcb-bigreq.el ends here
