;;BasicCustomization.el
;; ===================================

;; Basic Customization

;; ===================================

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
;;  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;;start beacon to highlight cursor
;;(require 'beacon)
;;(beacon-mode 1)
;;(setq beacon-blink-duration 0.4)
;;(setq beacon-color "#958cfa");;blue color
(use-package beacon
  :custom
  (beacon-color "#958cfa")
    :hook (after-init . beacon-mode))


;; Enable line numbers globally
;;(global-linum-mode t);;slow version
(global-display-line-numbers-mode);;fast version

;; highlight brackets
(setq show-paren-style 'parenthesis)

;;Helm’s generic functions
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; Enable helm mode
(helm-mode 1)

;; Enable neotree
(global-set-key [f8] 'neotree-toggle)

;; Enable flyspell
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(add-hook 'python-mode-hook 'flyspell-prog-mode)
;; enable flyspell in comments
(add-hook 'c++-mode-hook
	  (lambda ()
	    (flyspell-prog-mode)
	       ; ...
	              ))
