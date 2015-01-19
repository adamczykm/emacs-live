(live-add-pack-lib "python-mode")
(setq py-install-directory (concat default-directory "../lib/python-mode"))
(require 'python-mode)
(when (featurep 'python) (unload-feature 'python t))


(define-key python-mode-map (kbd "C-c C-b") nil)
(setq py-shell-name "ipython")

(py-split-windows-on-execute-off)
