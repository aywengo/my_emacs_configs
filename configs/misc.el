(require 'window-numbering)
(window-numbering-mode 1)

(set-face-attribute 'default nil :height 160)

(require 'whitespace)
(setq whitespace-line-column 120)
(setq whitespace-style '(face lines-tail))
(global-whitespace-mode +1)

(setq show-paren-delay 0)
(setq blink-matching-paren 1)
(show-paren-mode 1)

(require 'rainbow-delimiters)
(add-hook 'scala-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)

;; Exit emacs w/o prompts
(require 'cl)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
           (letf ((process-list ())) ad-do-it))

(add-hook 'markdown-mode-hook (lambda () (electric-indent-local-mode -1)))

;; Control and mouse-wheel-up to increase font size in buffer, down to decrease    
(global-set-key [C-wheel-up] '(lambda () (interactive) (text-scale-increase 1)))
(global-set-key [C-wheel-down] '(lambda () (interactive) (text-scale-decrease 1)))

;; Super wheel-up to increase font size in all buffers
(defun change-font-height (delta)
  (set-face-attribute 'default 
                      (selected-frame)
                      :height (+ (face-attribute 'default :height) delta)))
(global-set-key [M-wheel-up] '(lambda () (interactive) (change-font-height +4)))
(global-set-key [M-wheel-down] '(lambda () (interactive) (change-font-height -4)))

;; This is bound to f11 in Emacs 24.4
(toggle-frame-fullscreen) 
;; Who uses the bar to scroll?
(scroll-bar-mode 0)
;; Who needs tool bar?
(tool-bar-mode 0) 
;;Uncomment the below to hide the menu
;;(menu-bar-mode -1)

;; prompt only y or no
(fset `yes-or-no-p `y-or-n-p)

;; Put temporary and backup files elsewhere
(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-save/") t))) 
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
(setq create-lockfiles nil)

;; Always pick up the most recent file from the filesystem
(global-auto-revert-mode 1)