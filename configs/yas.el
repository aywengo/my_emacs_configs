(require 'yasnippet)
(yas-global-mode 1)

;; Turn on yafolding-mode for scala files
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))
;; Uncomment below to start with all elements folded
;;(require 'ensime)
;;(add-hook 'scala-mode-hook
;;          (lambda () (yafolding-mode) (yafolding-toggle-all)))

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        "~/.emacs.d/my_snippets"
	))

(yas-global-mode 1)