;;BasicCustomization.el
;; ===================================

;; Basic Customization

;; ===================================

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
;;  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(powerline-default-theme);; enable powerline
(powerline-raw mode-line-mule-info nil 'l);;improve performance

;;moe-theme
(add-hook 'after-init-hook
	    (lambda () (load-theme 'moe-dark t)))
;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)

;; Resize titles (optional).
(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))

;; Choose a color for mode-line.(Default: blue)
(setq moe-theme-set-color 'cyan)

;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
;;(moe-light)

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

;; Ask "y" or "n" instead of "yes" or "no".
(fset 'yes-or-no-p 'y-or-n-p)

;;Enable the display of time in the modeline
(display-time-mode 1)

;; Highlight corresponding parentheses when cursor is on one
(show-paren-mode t)

;; Show trailing white spaces
(setq-default show-trailing-whitespace t)

;; Remove useless whitespace before saving a file
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

;; Set locale to UTF8
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; highlight brackets
(setq show-paren-style 'parenthesis)

;;Helm’s generic functions
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; Enable helm mode
(helm-mode 1)

;;Enable projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
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
