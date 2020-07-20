;;MyPackages.el
;;=====================================

;; My Packages

;;=====================================
(defvar myPackages

  '(better-defaults                 ;; Set up some better Emacs defaults

    elpy                            ;; Emacs Lisp Python Environment

    flycheck                        ;; On the fly syntax checking

    py-autopep8                     ;; Run autopep8 on save

    blacken                         ;; Black formatting on save

    anaconda-mode ;;Code navigation, documentation lookup and completion for Python.

    company ;;Company is a text completion framework for Emacs

    beacon ;;Highlight the cursor whenever the window scrolls

    emms  ;; Emacs Multimedia System

    spacemacs-theme ;;theme

    magit                           ;; Git integration

    ;; flyspell requirement: apt install ispell
    flyspell ;;on-the-fly spelling checking

    helm ;;Helm is an Emacs framework for incremental completions and narrowing selections.

    neotree ;;A Emacs tree plugin

    use-package ;;The use-package macro allows you to isolate package configuration

    projectile ;;Projectile is a project interaction library for Emacs

    powerline ;; Emacs version of the Vim powerline.

    moe-theme ;; theme

    js2-mode ;;Improved JavaScript editing mode
	
	markdown-mode ;;markdown-mode is a major mode for editing Markdown-formatted text. 
    )

  )
;; Scans the list in myPackages

;; If the package listed is not already installed, install it

(mapc #'(lambda (package)

	  (unless (package-installed-p package)

	    (package-install package)))

	    myPackages)
