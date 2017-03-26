;; Scala-Ensime
;; Start ensime mode whenever we open scala mode, e.g. open a .scala file
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-mode)

;; Start ensime with Super-e
(global-set-key (kbd "C-c C-c c") 'ensime)

(global-set-key (kbd "s-R") 'ensime-inf-eval-buffer)
(global-set-key (kbd "s-r") 'ensime-inf-eval-region)

;; Uncomment below if you want to disable compile on save
;; (setq ensime-sbt-compile-on-save nil)

(setq ensime-startup-snapshot-notification nil)
(setq ensime-startup-notification nil)

(setq ensime-sem-high-faces
        '(
           (implicitConversion nil)
           (var . (:foreground "#ff2222"))
           (val . (:foreground "#dddddd"))
           (varField . (:foreground "#ff3333"))
           (valField . (:foreground "#dddddd"))
           (functionCall . (:foreground "#dc9157"))
           (param . (:foreground "#ffffff"))
           (object . (:foreground "#D884E3"))
           (class . (:foreground "green"))
           (trait . (:foreground "#009933")) ;; "#084EA8")) 
           (operator . (:foreground "#cc7832"))
           (object . (:foreground "#6897bb" :slant italic))
           (package . (:foreground "yellow"))
           (implicitConversion . (:underline (:style wave :color "blue")))
           (implicitParams . (:underline (:style wave :color "blue")))
           (deprecated . (:strike-through "#a9b7c6"))
           (implicitParams nil)
         )
        ;; ensime-completion-style 'company
        ;; ensime-sem-high-enabled-p nil ;; disable semantic highlighting
        ensime-tooltip-hints t ;; disable type-inspecting tooltips
        ensime-tooltip-type-hints t ;; disable typeinspecting tooltips
  )
