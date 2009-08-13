;;;;;
;************************************************
; rgr-python.el
;
; python integration
; Richard Riley.
; http://richardriley.net/default/projects/emacs/
;************************************************

(autoload 'python-mode "python-mode" "Python Mode." t)
 (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
 (add-to-list 'interpreter-mode-alist '("python" . python-mode))



(setq load-path
      (append (list nil
                    "~/.emacs.d/lisp/pymacs/"
                    "~/.emacs.d/lisp/pysmell"
                    )
              load-path))



(require 'ipython)
(setq python-python-command "ipython")
(setq py-python-command-args '( "-colors" "Linux"))



;; Initialize Pymacs                                                                                           

;; rope is as badly documented and confusing as they come no emacs python land
;; why python seems so poorly represented is anyones guess.
;; this solved my problems though:
;; http://www.enigmacurry.com/2009/01/21/autocompleteel-python-code-completion-in-emacs/

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)



;;(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)




;; (require 'pydb)
;; Ropemacs,pysmell and pymacs loaded by company-mode
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")




;; (require 'pysmell)
;; (add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))
 (add-hook 'python-mode-hook '(lambda () (define-key py-mode-map (kbd "C-<tab>") 'company-complete)))



(add-hook 'python-mode-hook
          '(lambda ()             
             (set (make-local-variable 'hippie-expand-try-functions-list) (add-to-list 'hippie-expand-try-functions-list 'try-pysmell-complete))))






(provide 'rgr-python)

