;; List the package we want
(setq package-list '(helm ensime scala-mode sbt-mode magit flycheck zoom-frm multiple-cursors find-file-in-repository ace-jump-mode yasnippet window-numbering expand-region neotree monokai-theme rainbow-delimiters markdown-mode slime yafolding ido-grid-mode dumb-jump ag dash-at-point))
(package-initialize)

;; Fetch list of packages available
(unless package-archive-contents
	(package-refresh-contents))

;; install the packages that are missing, if any
(dolist (package package-list)
	(unless (package-installed-p package)
		(package-install package)))