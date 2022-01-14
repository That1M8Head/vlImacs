;;; xcb-record.el --- X11 Record extension  -*- lexical-binding: t -*-

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

;; This file was generated by 'el_client.el' from 'record.xml',
;; which you can retrieve from <git://anongit.freedesktop.org/xcb/proto>.

;;; Code:

(require 'xcb-types)

(defconst xcb:record:-extension-xname "RECORD")
(defconst xcb:record:-extension-name "Record")
(defconst xcb:record:-major-version 1)
(defconst xcb:record:-minor-version 13)

(xcb:deftypealias 'xcb:record:CONTEXT 'xcb:-u4)

(defclass xcb:record:Range8
  (xcb:-struct)
  ((first :initarg :first :type xcb:CARD8)
   (last :initarg :last :type xcb:CARD8)))

(defclass xcb:record:Range16
  (xcb:-struct)
  ((first :initarg :first :type xcb:CARD16)
   (last :initarg :last :type xcb:CARD16)))

(defclass xcb:record:ExtRange
  (xcb:-struct)
  ((major :initarg :major :type xcb:record:Range8)
   (minor :initarg :minor :type xcb:record:Range16)))

(defclass xcb:record:Range
  (xcb:-struct)
  ((core-requests :initarg :core-requests :type xcb:record:Range8)
   (core-replies :initarg :core-replies :type xcb:record:Range8)
   (ext-requests :initarg :ext-requests :type xcb:record:ExtRange)
   (ext-replies :initarg :ext-replies :type xcb:record:ExtRange)
   (delivered-events :initarg :delivered-events :type xcb:record:Range8)
   (device-events :initarg :device-events :type xcb:record:Range8)
   (errors :initarg :errors :type xcb:record:Range8)
   (client-started :initarg :client-started :type xcb:BOOL)
   (client-died :initarg :client-died :type xcb:BOOL)))

(xcb:deftypealias 'xcb:record:ElementHeader 'xcb:CARD8)

(defconst xcb:record:HType:FromServerTime 1)
(defconst xcb:record:HType:FromClientTime 2)
(defconst xcb:record:HType:FromClientSequence 4)

(xcb:deftypealias 'xcb:record:ClientSpec 'xcb:CARD32)

(defconst xcb:record:CS:CurrentClients 1)
(defconst xcb:record:CS:FutureClients 2)
(defconst xcb:record:CS:AllClients 3)

(defclass xcb:record:ClientInfo
  (xcb:-struct)
  ((client-resource :initarg :client-resource :type xcb:record:ClientSpec)
   (num-ranges :initarg :num-ranges :type xcb:CARD32)
   (ranges~ :initform
	    '(name ranges type xcb:record:Range size
		   (xcb:-fieldref 'num-ranges))
	    :type xcb:-list)
   (ranges :initarg :ranges :type xcb:-ignore)))

(defclass xcb:record:BadContext
  (xcb:-error)
  ((~code :initform 0)
   (invalid-record :initarg :invalid-record :type xcb:CARD32)))

(defclass xcb:record:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)))
(defclass xcb:record:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (~sequence :type xcb:CARD16)
   (length :type xcb:CARD32)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)))

(defclass xcb:record:CreateContext
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)
   (element-header :initarg :element-header :type xcb:record:ElementHeader)
   (pad~0 :initform 3 :type xcb:-pad)
   (num-client-specs :initarg :num-client-specs :type xcb:CARD32)
   (num-ranges :initarg :num-ranges :type xcb:CARD32)
   (client-specs~ :initform
		  '(name client-specs type xcb:record:ClientSpec size
			 (xcb:-fieldref 'num-client-specs))
		  :type xcb:-list)
   (client-specs :initarg :client-specs :type xcb:-ignore)
   (ranges~ :initform
	    '(name ranges type xcb:record:Range size
		   (xcb:-fieldref 'num-ranges))
	    :type xcb:-list)
   (ranges :initarg :ranges :type xcb:-ignore)))

(defclass xcb:record:RegisterClients
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)
   (element-header :initarg :element-header :type xcb:record:ElementHeader)
   (pad~0 :initform 3 :type xcb:-pad)
   (num-client-specs :initarg :num-client-specs :type xcb:CARD32)
   (num-ranges :initarg :num-ranges :type xcb:CARD32)
   (client-specs~ :initform
		  '(name client-specs type xcb:record:ClientSpec size
			 (xcb:-fieldref 'num-client-specs))
		  :type xcb:-list)
   (client-specs :initarg :client-specs :type xcb:-ignore)
   (ranges~ :initform
	    '(name ranges type xcb:record:Range size
		   (xcb:-fieldref 'num-ranges))
	    :type xcb:-list)
   (ranges :initarg :ranges :type xcb:-ignore)))

(defclass xcb:record:UnregisterClients
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)
   (num-client-specs :initarg :num-client-specs :type xcb:CARD32)
   (client-specs~ :initform
		  '(name client-specs type xcb:record:ClientSpec size
			 (xcb:-fieldref 'num-client-specs))
		  :type xcb:-list)
   (client-specs :initarg :client-specs :type xcb:-ignore)))

(defclass xcb:record:GetContext
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)))
(defclass xcb:record:GetContext~reply
  (xcb:-reply)
  ((enabled :initarg :enabled :type xcb:BOOL)
   (~sequence :type xcb:CARD16)
   (length :type xcb:CARD32)
   (element-header :initarg :element-header :type xcb:record:ElementHeader)
   (pad~0 :initform 3 :type xcb:-pad)
   (num-intercepted-clients :initarg :num-intercepted-clients :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (intercepted-clients~ :initform
			 '(name intercepted-clients type xcb:record:ClientInfo size
				(xcb:-fieldref 'num-intercepted-clients))
			 :type xcb:-list)
   (intercepted-clients :initarg :intercepted-clients :type xcb:-ignore)))

(defclass xcb:record:EnableContext
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)))
(defclass xcb:record:EnableContext~reply
  (xcb:-reply)
  ((category :initarg :category :type xcb:CARD8)
   (~sequence :type xcb:CARD16)
   (length :type xcb:CARD32)
   (element-header :initarg :element-header :type xcb:record:ElementHeader)
   (client-swapped :initarg :client-swapped :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (xid-base :initarg :xid-base :type xcb:CARD32)
   (server-time :initarg :server-time :type xcb:CARD32)
   (rec-sequence-num :initarg :rec-sequence-num :type xcb:CARD32)
   (pad~1 :initform 8 :type xcb:-pad)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)
   (data :initarg :data :type xcb:-ignore)))

(defclass xcb:record:DisableContext
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)))

(defclass xcb:record:FreeContext
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (context :initarg :context :type xcb:record:CONTEXT)))

(defconst xcb:record:error-number-class-alist
  '((0 . xcb:record:BadContext))
  "(error-number . error-class) alist.")



(provide 'xcb-record)

;;; xcb-record.el ends here
