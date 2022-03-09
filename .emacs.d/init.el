;;; Emacs --- Init File
;;; Commentary:
;;; Author: Eduardo Parducci

;; -------------------------------------------------------------------------------------
;; ---------------------      INITIALIZE       -----------------------------------------
;; -------------------------------------------------------------------------------------

;; packages directory
;;; Code:

;; add MELPA to Emacs (package manager)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Removing unused automatic buffers

;; Forces the messages to 0, and kills the *Messages* buffer - thus disabling it on startup.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Disabled *Completions*
(add-hook 'minibuffer-exit-hook 
      '(lambda ()
         (let ((buffer "*Completions*"))
           (and (get-buffer buffer)
                (kill-buffer buffer)))))

;; -------------------------------------------------------------------------------------
;; ---------------------    ENHANCEMENTS     -------------------------------------------
;; -------------------------------------------------------------------------------------

;; fonts
(set-face-attribute 'default t :font "Source Code Pro-10")
(set-frame-font "Source Code Pro-10")

;; remove unecessary UI
(menu-bar-mode -1)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; startup screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; remove whitespace before saving
;; (add-hook 'before-save-hook 'whitespace-cleanup)

;; Restore from last session
(desktop-save-mode 1)

;; highlight selected text
(transient-mark-mode t)

;; display matching parenthesis
(show-paren-mode 1)

;; move faster up and down faster
(global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))

;; refresh buffers when any file change
(global-auto-revert-mode t)

;; line and column numbering
(global-linum-mode)
(linum-mode t)
(column-number-mode 1)

;; Search using regexp
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)

;; scroll
(setq scroll-step 1)
(setq scroll-conservatively 10)
(setq scroll-margin 7)
(setq scroll-conservatively 5)

;; disable backup files
(setq make-backup-files nil)

;; Buffer Navigation
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)

;; Vertical ruler
(setq fci-rule-column 120)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; tab sizes
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
;;(setq js-indent-level 2)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)


;; Enable transparency
(defun toggle-transparency ()
  "Toggle Emacs Transparency with C-c t."
  (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(75 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)


;; --------------------------------------------
;; ----- WEB DEVELOPMENT ENHANCEMENTS ---------
;; --------------------------------------------
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto-enable for .js/.jsx files
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
(add-to-list 'auto-mode-alist '("\\.tsx?$" . web-mode)) ;; auto-enable for .ts/.tsx files
(setq web-mode-content-types-alist '(("tsx" . "\\.ts[x]?\\'")))
(defun web-mode-init-hook ()
  "Hooks for Web mode.  Adjust indent."
  (setq web-mode-markup-indent-offset 4))
  
(add-hook 'web-mode-hook  'web-mode-init-hook)


;;disable lockfiles (crashes npm start)
(setq create-lockfiles nil)

;; Live flycheck (errorchecking)
(require 'flycheck)
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))
(add-hook 'flycheck-mode-hook 'add-node-modules-path)

;; HTML auto-closing tags
(add-hook 'web-mode-hook  'emmet-mode)

(load-theme 'wheatgrass)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("798590d60c3fe9b453305ae8d5cdf0e6d45c3482af4e805b9f9d5198f0f22342" default))
 '(package-selected-packages
   '(typescript-mode rjsx-mode emmet-mode add-node-modules-path flycheck-color-mode-line web-mode sunburn-theme json-mode rainbow-mode flycheck markdown-mode vue-mode fill-column-indicator)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
