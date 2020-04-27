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


;; -------------------------------------------------------------------------------------
;; ---------------------      PLUGINS          -----------------------------------------
;; -------------------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(centaur-tabs-mode t nil (centaur-tabs))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "1d2f406a342499f0098f9388b87d05ec9b28ccb12ca548f4f5fa80ae368235b6" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "7d4340a89c1f576d1b5dec57635ab93cdc006524bda486b66d01a6f70cffb08e" "a9d67f7c030b3fa6e58e4580438759942185951e9438dd45f2c668c8d7ab2caf" "51043b04c31d7a62ae10466da95a37725638310a38c471cc2e9772891146ee52" "53760e1863395dedf3823564cbd2356e9345e6c74458dcc8ba171c039c7144ed" "e62b66040cb90a4171aa7368aced4ab9d8663956a62a5590252b0bc19adde6bd" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "34dc2267328600f3065630e161a8ae59939700684c232073cdd5afbf78456670" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" default)))
 '(package-selected-packages
   (quote
    (ng2-mode ac-html-angular magithub telephone-line treemacs markdown-mode zenburn-theme web-mode typescript-mode solarized-theme sass-mode one-themes neotree monokai-theme monokai-pro-theme material-theme json-mode grandshell-theme flycheck fill-column-indicator color-theme-sanityinc-tomorrow auto-complete ample-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -------------------------------------------------------------------------------------
;; ---------------------      TESTING       --------------------------------------------
;; -------------------------------------------------------------------------------------


;; -------------------------------------------------------------------------------------
;; ---------------------    ENHANCEMENTS     -------------------------------------------
;; -------------------------------------------------------------------------------------

;; fonts
(set-face-attribute 'default t :font "Source Code Pro Semibold-11")
(set-frame-font "Source Code Pro Semibold-11" nil t)

;; Custom modeline config
(setq-default mode-line-format
              '("%e" mode-line-front-space
                ( "[%m] Line: %l Column: %c | " )
                (flycheck-mode flycheck-mode-line)
                ( "  |  %A%e%B%H%M    ")))

(setq display-time-day-and-date t)
(defvar display-time-format)
(setq display-time-format "%H:%M ")
(defvar display-time-default-load-average)
(setq display-time-default-load-average nil)
(display-time)
(display-time-mode 1)
(display-battery-mode 1)

;; (require 'memory-stats)
;; (setq memory-usage-format "%R %F %S")
;; (memory-usage-start)

;; bottom line info
(require 'telephone-line)
(telephone-line-mode t)

;; filetree
(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (defvar winum-keymap)
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-follow-delay             0.2
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'left
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-desc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-width                         35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

;; tab view
(centaur-tabs-mode)
(defvar centaur-tabs-height)
(setq centaur-tabs-height 60)
(defvar centaur-tabs-set-icons)
(setq centaur-tabs-set-icons t)
(defvar centaur-tabs-set-bar)
(setq centaur-tabs-set-bar 'over)
(global-set-key (kbd "<C-right>")  'centaur-tabs-forward)
(global-set-key (kbd "<C-left>")  'centaur-tabs-backward)

(defun centaur-tabs-buffer-groups ()
  "`centaur-tabs-buffer-groups' control buffers' group rules.
Group centaur-tabs with mode if buffer is derived from `eshell-mode'
`emacs-lisp-mode' `dired-mode' `org-mode' `magit-mode'.
All buffer name start with * will group to \"Emacs\".
Other buffer group by `centaur-tabs-get-group-name' with project name."
  (list
   (cond
    ((or (string-equal "*" (substring (buffer-name) 0 1))
         (memq major-mode '(magit-process-mode
                            magit-status-mode
                            magit-diff-mode
                            magit-log-mode
                            magit-file-mode
                            magit-blob-mode
                            magit-blame-mode
                            )))
     "Emacs")
    ((derived-mode-p 'prog-mode)
     "Editing")
    ((derived-mode-p 'dired-mode)
     "Dired")
    ((memq major-mode '(helpful-mode
                        help-mode))
     "Help")
    ((memq major-mode '(org-mode
                        org-agenda-clockreport-mode
                        org-src-mode
                        org-agenda-mode
                        org-beamer-mode
                        org-indent-mode
                        org-bullets-mode
                        org-cdlatex-mode
                        org-agenda-log-mode
                        diary-mode))
     "OrgMode")
    (t
     (centaur-tabs-get-group-name (current-buffer))))))
(add-hook 'term-mode-hook 'centaur-tabs-local-mode)

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
(add-hook 'before-save-hook 'whitespace-cleanup)

;; faster to quit
(fset 'yes-or-no-p 'y-or-n-p)

;; Restore from last session
(desktop-save-mode 1)

;; highlight selected text
(transient-mark-mode t)

;; set path
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

;; display matching parenthesis
(show-paren-mode 1)

;; move faster up and down faster
(global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))

;; usefull stuff before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook '(lamdba () (require 'saveplace)(setq-default save-place t)))

;; refresh buffers when any file change
(global-auto-revert-mode t)

;; display pictures and other compressed files
(setq auto-image-file-mode t)
(setq auto-compression-mode t)

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

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq standard-indent 2)
(setq indent-line-function 'insert-tab)
(setq tab-width 2)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40))
(setq indent-tabs-mode nil)

;; disable backup files
(setq make-backup-files nil)

;; auto wraping
(set-default 'truncate-lines t)
(add-hook 'text-mode-hook (lambda () (setq truncate-lines nil)))

;; usefull shortcuts
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)
(global-set-key [f5] 'eshell)
(global-set-key [f8] 'treemacs)
(global-set-key [f11] 'toggle-frame-fullscreen)
(global-set-key (kbd "C-h C-s") 'info-apropos)

;; magithub keybings
(global-set-key (kbd "C-g") 'nil)
(global-set-key (kbd "C-g c c") 'magit-checkout)
(global-set-key (kbd "C-g c m") 'magit-commit)
(global-set-key (kbd "C-g p l") 'magit-pull)
(global-set-key (kbd "C-g p s") 'magit-push)
(global-set-key (kbd "C-g m") 'magit-merge)

;; Window split line
(set-face-attribute 'vertical-border nil :foreground "#303030")

;; Buffer Navigation
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)

;; Enable transparency
(defun toggle-transparency ()
  "Toggle Emacs Transparency with C-<t>."
  (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
	  '(95 . 95) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; Open HTML files in web-mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; Auto-complete config & autostart
(ac-config-default)
(defvar ac-modes)
(add-to-list 'ac-modes 'html-mode)
(add-to-list 'ac-modes 'typescript-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'sass-mode)
(add-to-list 'ac-modes 'markdown-mode)

;; Flycheck (spell-checker for code) enable globaly
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(add-hook 'after-init-hook #'global-flycheck-mode)

;; Enable typesctipt linter in ng2-ts-mode

(flycheck-add-mode 'javascript-eslint 'ng2-ts-mode)

;; -------------------------------------------------------------------------------------
;; ----------------------------    THEME      ------------------------------------------
;; -------------------------------------------------------------------------------------

(require 'kaolin-themes)
(load-theme 'kaolin-temple t)
;;(load-theme 'kaolin-valley-light t)
(load-theme 'monokai-pro)

;; Apply treemacs customization for Kaolin themes, requires the all-the-icons package.
(kaolin-treemacs-theme)

;; If t, enable italic style in comments.
(setq kaolin-themes-italic-comments t)

;; When t, will display colored hl-line style instead monochrome.
(setq kaolin-themes-hl-line-colored t)

;; Enable distinct background for fringe and line numbers.
(setq kaolin-themes-distinct-fringe t)

;; Enable distinct colors for company popup scrollbar.
(setq kaolin-themes-distinct-company-scrollbar t)

;; Show git-gutter indicators as solid lines
(setq kaolin-themes-git-gutter-solid t)

;; code folding
(global-set-key (kbd "C-h C-q") 'hs-hide-all)
(global-set-key (kbd "C-h C-a") 'hs-show-all)
(global-set-key (kbd "C-h C-c") 'hs-toggle-hiding)
(add-hook 'prog-mode-hook #'(lambda () (hs-minor-mode t) ))

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default typescript-indent-level 2)
(setq-default tab-width 2)
(setq standard-indent 2)
(setq indent-line-function 'insert-tab)
(setq tab-width 2)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40))
(setq indent-tabs-mode nil)

;;; init.el ends here
