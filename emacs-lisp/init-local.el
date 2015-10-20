;;--------------------------------------------------------------------------
;;Set C-j as goto-line
;;--------------------------------------------------------------------------
(global-set-key (kbd "C-j") 'goto-line)

;;---------------------------------------------------------------------------
;;org mode
;;---------------------------------------------------------------------------
(setq org-src-fontify-natively t)

(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCEL(c!)")))

;;----------------------------------------------------------------------------
;; You can call bing-dict-brief to get the explanations of you query
;;----------------------------------------------------------------------------

(global-set-key (kbd "C-c d") 'bing-dict-brief)

;;----------------------------------------------------------------------------
;; pomodoro
;;----------------------------------------------------------------------------

;;---------------------------------------------------------------------------
;; Add ~/source and to load path
;;---------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "lisp/local-source" user-emacs-directory))

(require 'pomodoro)
(pomodoro-add-to-mode-line)

(global-set-key (kbd "C-c t s") 'pomodoro-start)
(global-set-key (kbd "C-c t p") 'pomodoro-pause)
(global-set-key (kbd "C-c t e") 'pomodoro-stop)

;;---------------------------------------------------------------------------
;;Robot mode
;;---------------------------------------------------------------------------
(require 'robot-mode)


(provide 'init-local)
;;; init-local.el ends here
