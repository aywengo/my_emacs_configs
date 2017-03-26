;; UI
(x-focus-frame nil)
(set-frame-font "Source Code Pro-18" nil t)

;; Un-comment below lines for Monokai theme
(require 'monokai-theme)
(load-theme 'monokai t)
(setq frame-background-mode 'dark)

;; Highlight current line - mostly useful for demos, etc
;;(set-face-background hl-line-face "gold")

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(ido-grid-mode 1)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(setq ido-file-extensions-order '(".scala" ".sbt" ".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
 t)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
 t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(require 'neotree)
;;uncomment to have a neotree window open initially
(neotree)
