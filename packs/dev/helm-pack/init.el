;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(live-load-config-file "helm-conf.el")
(live-load-config-file "helm-swoop-conf.el")
(live-load-config-file "helm-flycheck-conf.el")
(live-load-config-file "helm-clojure-conf.el")
(live-load-config-file "emacs-helm-ag-conf.el")
(helm-mode t)

(eval-after-load 'projectile
  '(require 'helm-projectile))

(setq helm-split-window-default-side 'right)
