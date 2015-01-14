;; org mode config

(live-add-pack-lib "org-mode/lisp")
(live-add-pack-lib "org-mode/contrib/lisp")



;; Fix conflicts (http://orgmode.org/org.html#Conflicts)

;; windmove compatibility
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

;; Yasnippet compatibility
(add-hook 'org-mode-hook
          (lambda ()
            (org-set-local 'yas/trigger-key [tab])
                                  (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))

(defun yas/org-very-safe-expand ()
              (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

;;* Macro for easy adding orgstruct++ mode to major modes
(defmacro add-orgstruct-modes (modes)
  (cons 'progn (mapcar #'(lambda (p)
                           `(add-hook (car ,p) (lambda ()
                                                 (turn-on-orgstruct++)
                                                 (setq orgstruct-heading-prefix-regexp (cdr ,p)))))
                       (eval modes))))

(require 'org)

(setq org-directory "/home/michal/Projects/literal/org")
(setq org-default-notes-file (concat org-directory "/capture.org"))

;; it is a new variable for my use
(setq org-main-file (concat org-directory "/main.org"))

;;* Capture
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-main-file "Tasks")
         "* TODO %?\n  SCHEDULED: %T\n  %a\n\n   %c\n\n")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
