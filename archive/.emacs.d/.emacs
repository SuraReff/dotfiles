(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(display-battery-mode t)
 '(global-display-line-numbers-mode t)
 '(horizontal-scroll-bar-mode t)
 '(package-selected-packages
   (quote
    (undo-tree smex magit god-mode expand-region evil-nerd-commenter evil ergoemacs-mode)))
 '(scroll-bar-mode (quote right))
 '(tab-bar-mode t)
 '(window-divider-default-places t)
 '(window-divider-mode t)
 '(xterm-mouse-mode t)
 '(window-divider-mode t)
 '(window-right-divider-width 20)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Franklin Gothic Medium" :foundry "outline" :slant normal :weight normal :height 143 :width normal))))
 '(window-divider ((t (:foreground "green" :width normal)))))
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

;; mouse
(global-set-key [right-divider mouse-5] 'mouse-split-window-vertically)
(global-set-key [bottom-divider mouse-5] 'mouse-split-window-horizontally)
(global-set-key [mode-line mouse-5] 'mouse-split-window-horizontally)

(when (display-graphic-p)
  (global-set-key [mouse-5] 'mouse-buffer-menu)
  '(xterm-mouse-mode t)
  )

(global-set-key [right-divider mouse-3] 'mouse-split-window-vertically)
(global-set-key [bottom-divider mouse-3] 'mouse-split-window-horizontally)
