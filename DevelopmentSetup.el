
;; ====================================

;; Development Setup

;; ====================================

;; Enable elpy
(elpy-enable)

;;set python3 to be elpy default py
(setq elpy-rpc-python-command "python3")

;; Enable Flycheck

(when (require 'flycheck nil t)

  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))

  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8

(require 'py-autopep8)

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;Disable anaconda-mode
(use-package anaconda-mode
  :disabled
  :commands R)
