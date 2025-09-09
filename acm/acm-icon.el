;;; acm-icon.el --- Icon for acm  -*- lexical-binding: t -*-

;; Filename: acm-icon.el
;; Description: Icon for acm
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2022, Andy Stewart, all rights reserved.
;; Created: 2022-06-07 21:41:25
;; Version: 0.1
;; Last-Updated: 2022-06-07 21:41:25
;;           By: Andy Stewart
;; URL: https://www.github.org/manateelazycat/acm-icon
;; Keywords:
;; Compatibility: GNU Emacs 28.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Icon for acm
;;

;;; Installation:
;;
;; Put acm-icon.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'acm-icon)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET acm-icon RET
;;

;;; Change log:
;;
;; 2022/06/07
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:

(defvar acm-icon-collections
  '(("bootstrap" . "https://icons.getbootstrap.com/icons/%s.svg")
    ("material" . "https://raw.githubusercontent.com/Templarian/MaterialDesign/master/svg/%s.svg")
    ("octicons" . "https://raw.githubusercontent.com/primer/octicons/master/icons/%s-24.svg")
    ("boxicons" . "https://boxicons.com/static/img/svg/regular/bx-%s.svg")))

;; Search icon from https://pictogrammers.com/library/mdi/icon/
(defvar acm-icon-alist
  `(("unknown" . ("pictogrammers" "crosshairs-question" "#74d2e7"))
    ("text" . ("pictogrammers" "script-text-outline" "#98c807"))
    ("method" . ("pictogrammers" "function-variant" "#da1884"))
    ("function" . ("pictogrammers" "function" "#ff6a00"))
    ("fun" . ("pictogrammers" "lambda" "#0abf53"))
    ("constructor" . ("pictogrammers" "table-column-plus-after" "#7ac143"))
    ("search" . ("pictogrammers" "magnify-plus" "#7ac143"))
    ("ctor" . ("pictogrammers" "table-column-plus-after" "#b84592"))
    ("field" . ("pictogrammers" "application-braces-outline" "#ff6c5f"))
    ("variable" . ("pictogrammers" "variable" "#00b2a9"))
    ("var" . ("pictogrammers" "variable" "#e04646"))
    ("class" . ("pictogrammers" "view-grid-plus-outline" "#ef5734"))
    ("interface" . ("pictogrammers" "application-brackets-outline" "#6cbc35"))
    ("i/f" . ("pictogrammers" "application-brackets-outline" "#ee3322"))
    ("module" . ("pictogrammers" "file-code-outline" "#00c4cc"))
    ("mod" . ("pictogrammers" "file-code-outline" "#ff6908"))
    ("property" . ("pictogrammers" "wrench" "#bf033b"))
    ("prop" . ("pictogrammers" "wrench" "#0eb24e"))
    ("unit" . ("pictogrammers" "ruler-square" "#98c807"))
    ("value" . ("pictogrammers" "plus-circle-outline" "#ff0092"))
    ("enum" . ("pictogrammers" "format-list-bulleted-square" "#dc5034"))
    ("keyword" . ("pictogrammers" "key-variant" "#0085c3"))
    ("k/w" . ("pictogrammers" "key-variant" "#ed6856"))
    ("key" . ("pictogrammers" "key-variant" "#0085c3"))
    ("snippet" . ("pictogrammers" "note-text-outline" "#f05d21"))
    ("yas-snippet" . ("pictogrammers" "note-text-outline" "#f05d21"))
    ("template" . ("pictogrammers" "note-text-outline" "#207c88"))
    ("sn" . ("pictogrammers" "note-text-outline" "#f69653"))
    ("color" . ("pictogrammers" "palette" "#099d84"))
    ("face" . ("pictogrammers" "palette" "#98c807"))
    ("file" . ("pictogrammers" "file-document-outline" "#e30061"))
    ("reference" . ("pictogrammers" "library" "#954a97"))
    ("ref" . ("pictogrammers" "library" "#006e96"))
    ("folder" . ("pictogrammers" "folder" "#f56040"))
    ("dir" . ("pictogrammers" "folder" "#d25238"))
    ("enum-member" . ("pictogrammers" "order-bool-ascending-variant" "#ff9900"))
    ("enummember" . ("pictogrammers" "order-bool-ascending-variant" "#8a8acb"))
    ("member" . ("pictogrammers" "order-bool-ascending-variant" "#e55e5e"))
    ("constant" . ("pictogrammers" "lock-remove-outline" "#d1de3f"))
    ("const" . ("pictogrammers" "lock-remove-outline" "#f65314"))
    ("struct" . ("pictogrammers" "code-braces" "#96cbb3"))
    ("event" . ("pictogrammers" "lightning-bolt-outline" "#e990ab"))
    ("operator" . ("pictogrammers" "plus-minus" "#f47b7b"))
    ("op" . ("pictogrammers" "plus-minus" "#eb0973"))
    ("type-parameter" . ("pictogrammers" "format-list-bulleted-type" "#39a6dd"))
    ("typeparameter" . ("pictogrammers" "format-list-bulleted-type" "#dc5034"))
    ("param" . ("pictogrammers" "cog" "#ff0e83"))
    ("macro" . ("pictogrammers" "lambda" "#ff9900"))
    ("translate" . ("material" "translate" "#98c807"))
    ("emmet abbreviation" . ("material" "arrow-expand" "#98c807"))
    ("custom" . ("pictogrammers" "cog" "#ed6856"))
    ("special form" . ("material" "sawtooth-wave" "#0abf53"))
    ("feature" . ("material" "feather" "#00c4cc"))
    ("at" . ("material" "at" "#0085c3"))
    ("port" . ("material" "alphabet-tengwar" "#39a6dd"))
    ("net" . ("material" "ethereum" "#ed6856"))
    ("register" . ("material" "map-marker-outline" "#ff6908"))
    ("block" . ("material" "alpha-b-box-outline" "#96cbb3"))
    ("prototype" . ("material" "source-commit-start" "#0085c3"))
    ("instance" . ("material" "gamepad-circle-left" "#da1884"))
    ("task" . ("material" "clock-fast" "#e22272"))
    ("typedef" . ("material" "zodiac-leo" "#bf11b6"))
    ("tailwind" . ("material" "creation" "#39a6dd"))
    ("namespace" . ("material" "alpha-n-box-outline" "#dc5034"))
    ("package" . ("material" "poker-chip" "#dc5034"))
    ("string" . ("pictogrammers" "sticker-text-outline" "#98c807"))
    ("number" . ("pictogrammers" "numeric" "#98c807"))
    ("boolean" . ("pictogrammers" "circle-half-full" "#98c807"))
    ("array" . ("pictogrammers" "code-brackets" "#0085c3"))
    ("object" . ("material" "zodiac-taurus" "#0085c3"))
    ("null" . ("material" "spider" "##98c807"))
    ("tabnine" . ("material" "alpha-t-box-outline" "#954a97"))
    ("codeium" . ("material" "alpha-c-box-outline" "#09b6a2"))
    ("note" . ("material" "note" "#77aa99"))
    ("capf" . ("material" "infinity" "#f47b7b"))
    ("jupyter" . ("material" "exponent" "#f47b7b"))
    ("copilot" . ("octicons" "copilot" "#808080"))
    ("workspace-symbol" . ("material" "shark-fin-outline" "#0085c3"))
    (t . ("pictogrammers" "crosshairs-question" "#90cef1"))))

(defvar acm-icon-cache (make-hash-table :test 'equal))
(defvar acm-icon-dir (expand-file-name "icons" (file-name-directory load-file-name)))
(defvar acm-icon-width 4)

(defun acm-icon-filepath (collection name)
  (concat (file-name-as-directory acm-icon-dir) (format "%s_%s.svg" collection name)))

(defun acm-icon-fetch-all ()
  (interactive)
  (dolist (icon acm-icon-alist)
    (let* ((collection (nth 0 (cdr icon)))
           (name (nth 1 (cdr icon)))
           (url (format (cdr (assoc collection acm-icon-collections)) name))
           (filename (acm-icon-filepath collection name)))
      (with-temp-buffer
        (url-insert-file-contents url)
        (write-region (point-min) (point-max) filename)))))

(defun acm-icon-parse (collection name)
  (with-temp-buffer
    (insert-file-contents (acm-icon-filepath collection name))
    (xml-parse-region (point-min) (point-max))))

(defun acm-icon-convert-to-svg-color (color-name)
  "Convert Emacs COLOR-NAME to #rrggbb form.
If COLOR-NAME is unknown to Emacs, then return COLOR-NAME as-is."
  (let ((rgb-color (color-name-to-rgb color-name)))
    (if rgb-color
        (apply #'color-rgb-to-hex (append rgb-color '(2)))
      color-name)))

(defun acm-icon (collection name fg-color)
  (let* ((root (acm-icon-parse collection name))

         ;; Read original viewbox
         (viewbox (cdr (assq 'viewBox (xml-node-attributes (car root)))))
         (viewbox (mapcar 'string-to-number (split-string viewbox)))
         (view-x (nth 0 viewbox))
         (view-y (nth 1 viewbox))
         (view-width (nth 2 viewbox))
         (view-height (nth 3 viewbox))

         ;; Set icon size (in pixels) to 4x1 characters
         (svg-width  (* (frame-char-width)  acm-icon-width))
         (svg-height (* (frame-char-height) 1))

         (svg-viewbox (format "%f %f %f %f" view-x view-y view-width view-height))
         (fg-color (acm-icon-convert-to-svg-color
                    (or (when (facep fg-color)
                          (face-foreground fg-color nil t))
                        fg-color (face-attribute 'default :foreground))))
         (svg (svg-create svg-width svg-height
                          :viewBox svg-viewbox
                          :stroke-width 0
                          :fill fg-color)))

    (dolist (item (xml-get-children (car root) 'path))
      (let* ((attrs (xml-node-attributes item))
             (path (cdr (assoc 'd attrs)))
             (fill (or (cdr (assoc 'fill attrs)) fg-color)))
        (svg-node svg 'path :d path :fill fill)))
    (svg-image svg :ascent 'center :scale 1)))

(defun acm-icon-build (collection name fg-color)
  (if (and acm-enable-icon
           (image-type-available-p 'svg))
      (let* ((icon-key (format "%s_%s" collection name))
             (icon-text (gethash icon-key acm-icon-cache)))
        (unless icon-text
          (setq icon-text (propertize
                           (apply #'concat (make-list acm-icon-width "-"))
                           'display (acm-icon collection name fg-color)))
          (puthash icon-key icon-text acm-icon-cache))
        icon-text)
    ""))

(provide 'acm-icon)

;;; acm-icon.el ends here
