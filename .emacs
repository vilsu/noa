; How can you source different files in Emacs simply?

; ~/bin/editors/emacs/describtion
; ~/bin/editors/emacs/bugs
; ~/bin/editors/emacs/alphaOptions
; ~/bin/editors/emacs/sources

;;; ~/bin/editors/emacs/orgMode.el
;;; ~/bin/editors/emacs/hsMinorMode.el
;;; ~/bin/editors/emacs/keyboard.el
;;;
;;; ~/bin/editors/emacs/pythonMode.el

(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

(turn-on-font-lock)       ; same as syntax on in Vim

(setq inhibit-splash-screen t)         ; hide welcome screen

;; to include all subdirectories too
;;; 1. color theme
;;; 2. Google hyperlinks
;;;
;;; this code includes only one folder
(let ((base "/Users/Sam/.lisp"))
  (add-to-list 'load-path base)
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (and (file-directory-p name) 
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

;;; This code includes only one folder
(let ((base "/Users/Sam/bin/editors/emacs"))
  (add-to-list 'load-path base)
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (and (file-directory-p name) 
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))
