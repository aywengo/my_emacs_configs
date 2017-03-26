;; Scalacheck - styling check of Scala code
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save idle-change new-line))
(setq flyspell-issue-welcome-flag nil)