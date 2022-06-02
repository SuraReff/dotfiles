(setq inhibit-startup-message t)
(setq visible-bell t)(load-theme 'wombat t)
(global-display-line-numbers-mode 1)
(global-undo-tree-mode)
(ido-mode 1)
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x a") 'mark-whole-buffer)
(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "C-/") 'evilnc-comment-or-uncomment-lines)

(setq cua-remap-control-z nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(smex magit undo-tree expand-region evil-nerd-commenter))
 '(tool-bar-mode nil))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'expand-region)
(global-set-key (kbd "C-.") 'er/expand-region)
(global-set-key (kbd "C->") 'er/contract-region)
