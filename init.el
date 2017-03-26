;; Packages sources
(package-initialize)

(setq mac-command-modifier 'super)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq server-socket-dir "~/.emacs.d/server")

(load "~/.emacs.d/configs/install")
(load "~/.emacs.d/configs/ui")
(load "~/.emacs.d/configs/org")
(load "~/.emacs.d/configs/keyset")
(load "~/.emacs.d/configs/misc")
(load "~/.emacs.d/configs/dash")
(load "~/.emacs.d/configs/git")
(load "~/.emacs.d/configs/ensime")
(load "~/.emacs.d/configs/yas")
(load "~/.emacs.d/configs/scalacheck")
(load "~/.emacs.d/configs/codeutils")
