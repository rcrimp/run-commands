;; .emacs

;; load cosc customizations
;; this file may get altered from year to year
;; replace 'current' with '2012' in the string below if you want to
;; avoid any future changes
(load-file "/home/cshome/coursework/241/setup/current/emacs/cosc.el")

;; get rid of the start-up screen
(setq inhibit-splash-screen t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (misterioso)))
 '(display-time-mode t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(ps-font-size (quote (20 . 22)))
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "#74af68" :slant italic :height 0.9)))))
