(setq inhibit-startup-message t)
(setq visible-bell t)(load-theme 'wombat t)
(global-display-line-numbers-mode 1)
(global-set-key (kbd "C-(") 'insert-parentheses)
(setq tab-always-indent 'complete
      indent-tabs-mode nil)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
;; (package-initialize)
(package-refresh-contents)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(window-divider-mode t)
 '(window-divider-default-places t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(dichromacy))
 '(display-battery-mode t)
 '(global-display-line-numbers-mode t)
 '(horizontal-scroll-bar-mode t)
 '(package-selected-packages
   '(undo-tree smex magit god-mode expand-region evil-nerd-commenter evil ergoemacs-mode))
 '(scroll-bar-mode 'right)
 '(tab-bar-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Franklin Gothic Medium" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

;; mouse
(global-set-key [right-divider mouse-5] 'mouse-split-window-vertically)
(global-set-key [bottom-divider mouse-5] 'mouse-split-window-horizontally)
(global-set-key [mode-line mouse-5] 'mouse-split-window-horizontally)
(global-set-key [mouse-5] 'mouse-buffer-menu)
(global-set-key [right-divider mouse-3] 'mouse-split-window-vertically)
(global-set-key [bottom-divider mouse-3] 'mouse-split-window-horizontally)
(global-set-key [mode-line mouse-3] 'mouse-split-window-horizontally)
