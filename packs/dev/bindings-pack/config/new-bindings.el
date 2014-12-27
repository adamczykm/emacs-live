;; My keybindings.
;; Beware: M-x is swapped with C-SPC

;; CONFIGURATIONS:

(require 'key-chord)
(key-chord-mode 1)



;; !!!!!! Controversy alert !!!!!!!!! ----------

(global-set-key (kbd "M-x") 'set-mark-command)
(global-set-key (kbd "C-x s") 'save-buffer)
(define-key dired-mode-map (kbd "C-l") 'dired-up-directory)
;; TEXT edit
(global-set-key (kbd "M-D") 'backward-kill-word)





;; ------------ BUFFERS & FRAMES ----------------


;; switching between 2 top buffers
(defun switch-to-previous-buffer ( )
      (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "C-q") 'switch-to-previous-buffer)


(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; ------------      HELM     -------------------

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))




;; ----------  TEXT MVMT & SELECTION  -----------


;; -- Ace jump
(global-set-key (kbd "M-Z") 'ace-jump-line-mode)
(global-set-key (kbd "C-M-z") 'ace-jump-char-mode)
(global-set-key (kbd "M-z") 'ace-jump-mode)
(key-chord-define-global "zx" 'ace-jump-mode-pop-mark)

(global-set-key (kbd "M-@") 'er/expand-region)


;; ---------------- PYTHON PACK -----------------
