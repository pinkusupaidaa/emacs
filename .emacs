(package-initialize)

(setq inhibit-startup-screen t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "/some/path/neotree")
(add-to-list 'load-path "~/.emacs.d/evil")
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(add-to-list 'load-path "~/.emacs.d/goto-chg")
(require 'neotree)
(require 'undo-tree)
(require 'evil)
(require 'goto-chg)
(evil-mode 1)
(global-undo-tree-mode)
(global-set-key [(control ?.)] 'goto-last-change)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [(control ?,)] 'goto-last-change-reverse)
(global-linum-mode t)

;; auto-complete
(ac-config-default)
(global-auto-complete-mode t)

;; dumb-jump
(dumb-jump-mode)

;; Enable org mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; Make org mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
