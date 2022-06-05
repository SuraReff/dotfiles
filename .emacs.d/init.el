(setq inhibit-startup-message t)
(setq visible-bell t)(load-theme 'wombat t)
(global-display-line-numbers-mode 1)
(global-set-key (kbd "C-(") 'insert-parathesis)

;; uncomment if you want to not use  Evil mode
(global-undo-tree-mode)
(ido-mode 1)
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

(global-set-key (kbd "C-x a") 'mark-whole-buffer)
(global-set-key (kbd "M-n") 'scroll-up-command)
(global-set-key (kbd "M-p") 'scroll-down-command)
(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "C-/") 'evilnc-comment-or-uncomment-lines)


(global-set-key (kbd "M-x") 'smex)
(require 'cl-lib)
(require 'magit)

(setq magit-auto-revert-mode nil)
(setq magit-repo-dirs "~/")
(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log)
(setq cua-remap-control-z nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(evil smex magit undo-tree expand-region evil-nerd-commenter))
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
(global-set-key (kbd "C-,") 'er/contract-region)


;;; evil mode
;; Download Evil
;;Enable Evil
;; (unless (package-installed-p 'evil)
;;   (package-install 'evil))

;; (setq evil-emacs-state-modes nil)

;; (require 'evil)
;; (evil-mode 1)
;; (require 'undo-fu)
;; (setq evil-undo-system 'undo-fu) 
;; (defun my-eval()
;;  (interactive)
;;  (if (region-active-p)
;;      (#'cua-copy-region)
;;     (#'evil-execute-normal-keys)
;; ))
;; (define-key evil-insert-state-map (kbd "C-c") 'cua-copy-region)
;; (define-key evil-insert-state-map (kbd "C-v") 'cua-paste)
;; (define-key evil-insert-state-map (kbd "C-x") 'cua-cut-region)
;; (define-key evil-insert-state-map (kbd "C-z") 'undo-fu-only-undo)
;; (define-key evil-insert-state-map (kbd "C-S-z") 'undo-fu-only-redo)
;; (global-set-key (kbd "C-[") 'evil-execute-normal-keys)

;; ;; (global-set-key (kbd "C-[") #'my-eval)
;;; test uderstanding on EMASCS lips lang
;; (+ 2 2)
;; '('this is a terste)
;; (fill-column)
;; (setq 'flowers '(rose violet daisy buttercup))
;; 'flowers
;; flowers
;; (buffer-name)
;; (buffer-file-name)
;; (current-buffer)
;; (other-buffer)
