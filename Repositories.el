;;Repositories.el
;;==============================

;;      Repository

;;==============================
(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			                          ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
(package-refresh-contents)
