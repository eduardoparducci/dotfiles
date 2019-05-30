;;; Org-mode --- Functionality

;;; Commentary:
;;; Author: Eduardo Parducci
;;; Time-stamp: <2019-05-11 13:29:05>

;;; Code:

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

(setq org-agenda-files (list "~/.org/work.org"
                             "~/.org/school.org"))

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t)

;; Set todo sequence and states
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "IN PROGRESS(p)" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "CANCELLED(c@/!)"))))
(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("IN PROGRESS" :foreground "yellow" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

;;; config.el ends here
