;; My keybindings.
;; Beware: M-x is swapped with C-SPC

;;* ---------    MY UTILS               ---------------

(defun connect-serwer-intelc ()
  (interactive)
  (tramp "ssh://michal@176.119.40.101|sudo:176.119.40.101:/"))

(global-set-key (kbd "C-c r") 'connect-serwer-intelc)

(global-set-key (kbd "M-E") 'eshell)

;;* ---------    CONFIGURATIONS         ---------------

(require 'key-chord)
(key-chord-mode 1)


;;* ---------    UNDEFS                 ---------------

(define-key c++-mode-map (kbd "C-c C-b") nil)
(global-unset-key (kbd "C-<RET>"))

;;* !!!!!!       CONTROVERSY ALERT      ---------------

(global-set-key (kbd "C-SPC") 'execute-extended-command)
(global-set-key (kbd "M-x") 'set-mark-command)
(global-set-key (kbd "C-x s") 'save-buffer)
(define-key dired-mode-map (kbd "C-l") 'dired-up-directory)
;; TEXT edit
(global-set-key (kbd "M-D") 'backward-kill-word)





;;* ---------    BUFFERS & FRAMES       ---------------
;;window and buffer movement
(global-set-key (kbd "C-x o") 'other-frame)
(global-set-key (kbd "C-c w b") 'winner-undo)
(global-set-key (kbd "C-c w f") 'winner-redo)
(global-set-key (kbd "C-c w s") 'swap-windows)
(global-set-key (kbd "C-c w r") 'rotate-windows)
(global-set-key (kbd "C-c w u") 'buf-move-up)
(global-set-key (kbd "C-c w d") 'buf-move-down)
(global-set-key (kbd "C-c w l") 'buf-move-left)
(global-set-key (kbd "C-c w r") 'buf-move-right)
(global-set-key (kbd "C-c w .") 'shrink-window-horizontally)
(global-set-key (kbd "C-c w ,") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c w /") (lambda () (interactive) (enlarge-window -1)))
(global-set-key (kbd "C-c w '") (lambda () (interactive) (enlarge-window 1)))



;; switching between 2 top buffers
(defun switch-to-previous-buffer ()
      (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "C-q") 'switch-to-previous-buffer)


(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;;* ---------    HELM                   ---------------

(global-set-key (kbd "<f6>") 'helm-semantic-or-imenu)



;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))



(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-SPC") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


(global-set-key (kbd "C-c C-b") 'helm-bookmarks)
;;(define-key w3m-mode-map  (kbd "C-c C-b") 'helm-bookmarks)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)


;; helm swoop

(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(define-key isearch-mode-map (kbd "M-s s") 'helm-swoop-from-isearch)

(define-key helm-swoop-edit-map (kbd "C-c C-c") 'helm-swoop--edit-complete)
(define-key helm-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-c") 'helm-multi-swoop--edit-complete)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)
(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck)

(global-set-key (kbd "<C-tab>") 'tab-to-tab-stop)
(define-key isearch-mode-map (kbd "M-s s") 'helm-swoop-from-isearch)

;; helm ag
(define-key projectile-mode-map (kbd "M-o") 'projectile-helm-ag)
(define-key projectile-mode-map (kbd "M-O") 'helm-ag-pop-stack)
(define-key projectile-mode-map (kbd "C-M-o") 'helm-ag)


;;* ---------    TEXT MVMT & SELECTION  ---------------


;; -- Ace jump
(global-set-key (kbd "M-Z") 'ace-jump-line-mode)
(global-set-key (kbd "C-M-z") 'ace-jump-char-mode)
(global-set-key (kbd "M-z") 'ace-jump-mode)
(key-chord-define-global "zx" 'ace-jump-mode-pop-mark)

(global-set-key (kbd "M-@") 'er/expand-region)


;;* ---------    TEXT FORMATTING        ---------------

(global-set-key (kbd "M-/") 'comment-or-uncomment-region)

;;** ------------    ALIGNMENT          ---------------

(global-set-key (kbd "C-x a a") 'align)
(global-set-key (kbd "C-x a r") 'align-regexp)

;;* ---------    PAREDIT                ---------------

(define-key paredit-mode-map (kbd "C-S-<right>") 'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "C-S-<left>") 'paredit-backward-slurp-sexp)

;;* ---------    HASKELL PACK           ---------------

(define-key haskell-mode-map (kbd "C-c b") nil)
(define-key haskell-mode-map (kbd "C-c C-b") nil)

(define-key haskell-mode-map (kbd "C-c .") 'find-tag)
(define-key haskell-mode-map (kbd "C-c ,") 'pop-tag-mark)


(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
  (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))

(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

;;** Structured Haskell Mode
(eval-after-load 'structured-haskell-mode
  '(define-key shm-map (kbd "M-j") 'shm/newline-indent))


;;* ---------    PYTHON PACK            ---------------

(define-key python-mode-map (kbd "C-c C-l") 'py-execute-line-ipython)
(define-key python-mode-map (kbd "C-c C-d") 'jedi:show-doc)
(define-key python-mode-map (kbd "<f5>") 'py-execute-buffer-ipython)
(define-key python-mode-map (kbd "C-<f5>") 'py-execute-buffer-ipython-dedicated)
(define-key python-mode-map (kbd "<f9>") 'py-execute-region-ipython)
(define-key python-mode-map (kbd "C-<f9>") 'py-execute-region-ipython-dedicated)

;;* ---------    FUNKY CHARACTERS       ---------------

;;funky characters
(global-set-key (kbd "C-c i a") (lambda () (interactive) (insert "𝝰")))
(global-set-key (kbd "C-c i A") (lambda () (interactive) (insert "𝝖")))
(global-set-key (kbd "C-c i b") (lambda () (interactive) (insert "𝝱")))
(global-set-key (kbd "C-c i B") (lambda () (interactive) (insert "𝝗")))
(global-set-key (kbd "C-c i d") (lambda () (interactive) (insert "𝝳")))
(global-set-key (kbd "C-c i D") (lambda () (interactive) (insert "𝝙")))
(global-set-key (kbd "C-c i g") (lambda () (interactive) (insert "𝝲")))
(global-set-key (kbd "C-c i G") (lambda () (interactive) (insert "𝞒")))
(global-set-key (kbd "C-c i l") (lambda () (interactive) (insert "λ")))
(global-set-key (kbd "C-c i L") (lambda () (interactive) (insert "Λ")))
(global-set-key (kbd "C-c i N") (lambda () (interactive) (insert "ℕ")))
(global-set-key (kbd "C-c i R") (lambda () (interactive) (insert "ℝ")))
(global-set-key (kbd "C-c i i") (lambda () (interactive) (insert "∞")))
(global-set-key (kbd "C-c i .") (lambda () (interactive) (insert "×")))
(global-set-key (kbd "C-c i 0") (lambda () (interactive) (insert "∅")))
(global-set-key (kbd "C-c i u") (lambda () (interactive) (insert "∪")))
(global-set-key (kbd "C-c i s") (lambda () (interactive) (insert "♯")))
(global-set-key (kbd "C-c i f") (lambda () (interactive) (insert "♭")))
(global-set-key (kbd "C-c i p") (lambda () (interactive) (insert "£")))


;;* ---------    MAGIT                  ---------------

(define-key global-map (kbd "C-M-g") 'magit-status)

;;* ---------    ORGMODE                ---------------

(define-key org-mode-map (kbd "C-c C-b") nil)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o l") 'org-agenda-list)
(global-set-key (kbd "C-c o d") 'org-decrypt-entry)
(global-set-key (kbd "C-c o t") 'org-todo-list)
(global-set-key (kbd "C-c o o") (lambda() (interactive)(find-file org-main-file)))


(define-key org-mode-map (kbd "C-<RET>") 'org-insert-heading-respect-content)
