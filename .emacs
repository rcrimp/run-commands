;; .emacs

;;; cosc.el (for semester 1 2014)
;;; for emacs 24.0

;; don't load default.el because it messes with the frame title
(setq inhibit-default-init t)

;; Set up appearance type things
(global-font-lock-mode t)
(setq frame-title-format
      (concat  "Emacs " emacs-version " %f"))
(show-paren-mode t)
(blink-cursor-mode -1)
(column-number-mode t)
(if (not terminal-frame)
    (progn
      (set-background-color "light yellow")
      (set-foreground-color "black")))

;;use spaces instead of tabs, and indent 3 spaces per tab
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 3)
(setq-default sh-basic-offset 3)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-xm" 'execute-extended-command)

(delete-selection-mode t)

(define-key global-map (kbd "RET") 'newline-and-indent)

(setenv "PATH" (concat "/home/cshome/coursework/241/bin:/usr/texbin:"
                       (getenv "PATH")))

;; don't be so picky
(fset 'yes-or-no-p 'y-or-n-p)

;; for buffer switching
(iswitchb-mode t)
(global-set-key "\C-x\C-b" 'iswitchb-buffer)

;; get rid of beeping
(setq visible-bell t)

;; automatically indent region when pasting
(defadvice yank (after indent-region activate)
  (let ((mark-even-if-inactive t))
    (indent-region (region-beginning) (region-end) nil)))
;; and while cyling through kill ring
(defadvice yank-pop (after indent-region activate)
  (let ((mark-even-if-inactive t))
    (indent-region (region-beginning) (region-end) nil)))

;; set up colours if we aren't running emacs inside a terminal
;; to see all available colors use (list-colors-display)
(unless terminal-frame
  (defun cs-lightbg()
    "Set dark text on a light background"
    (interactive)
    (set-background-color "light yellow")
    (set-foreground-color "black")
    (set-face-attribute 'region nil :background "lightcyan2"))
  (defun cs-darkbg()
    "Set light text on a dark background"
    (interactive)
    (set-background-color "dark slate gray")
    (set-foreground-color "gray90")
    (set-face-attribute 'region nil :background "gray20"))
  (cs-darkbg)
  ;; set default font family and size
  ;; (cond ((equal system-type 'darwin)
  ;;        (set-face-attribute 'default nil
  ;;                            :height 160 :family "Courier New"))
  ;;       ((equal system-type 'gnu/linux)
  ;;        (set-face-attribute 'default nil
  ;;                            :height 120 :family "Nimbus Mono L"))
  ;;       ((equal system-type 'windows-nt) (message "What's a good font on windows?"))
  ;;       (t (message "Unknown system type" system-type)))
  )

(setq darkbg t)

(defun toggle-background()
  (interactive)
  (if darkbg (progn (cs-lightbg) (setq darkbg nil))
    (cs-darkbg)
    (setq darkbg t)))

;; Creating a new menu pane in the menu bar to the right of “Tools” menu
(define-key-after
  global-map
  [menu-bar coscmenu]
  (cons "Cosc" (make-sparse-keymap "Cosc"))
  'tools)

(define-key global-map [menu-bar coscmenu togglebg]
  '(menu-item "Dark background" toggle-background
              :help "Switch between light and dark background"
              :enable t
              :button (:toggle . darkbg)))

;;(defun cs-load-config()
;;  (interactive)
;;  (load-file "/home/cshome/coursework/241/setup/current/emacs/cosc.el"))

(define-key global-map [menu-bar coscmenu cs-reload]
  '(menu-item "Reload CS config"  cs-load-config
              :help "Reload the Cosc configuration file"))

(global-set-key "\C-cc" 'compile)

;;(setq compile-command "javac -Xlint -d . *.java")
;;(setq compile-command "ant -find")
(setq compile-command "gcc -W -Wall -O2 -ansi -pedantic ")

(defun cs-compile-finish (buf str)
  "Hide compilation buffer if no errors of warnings"
  (if (equal "finished\n" str)
      (progn (delete-windows-on buf)
             (message "Compilation finished"))
    (message "To visit errors press C-x ` or click line in compilation window")))

;;(add-hook 'compilation-finish-functions 'cs-compile-finish)

;; temp fix for broken printing
(setq lpr-switches '("-h" "-p"))
;;(setq printer-name "csprt-lab-f")

(define-key read-expression-map (kbd "TAB") 'lisp-complete-symbol)

(setq cs-currently-indenting t)

(defun indent-or-complete ()
  "Complete if we've just inserted a character, otherwise indent line."
  (interactive)
  (if (or (eq last-command 'self-insert-command)
          (and (not cs-currently-indenting)
               (eq last-command 'indent-or-complete)))
      (progn (setq cs-currently-indenting nil)
             (dabbrev-expand nil))
    (indent-for-tab-command)
    (setq cs-currently-indenting t)))

(add-hook 'find-file-hooks
          (function (lambda ()
                      (local-set-key (kbd "TAB") 'indent-or-complete))))

(defun next-user-buffer ()
  "Switch to the next user buffer in cyclic order.\n
User buffers are those not starting with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (next-buffer))))

(defun previous-user-buffer ()
  "Switch to the previous user buffer in cyclic order.\n
User buffers are those not starting with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer))))

(global-set-key (kbd "C-<prior>") 'previous-user-buffer) ; Ctrl+PageDown
(global-set-key (kbd "C-<next>") 'next-user-buffer)      ; Ctrl+PageUp


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
