(live-add-pack-lib "async")
(live-add-pack-lib "helm")

(require 'helm-config)

(setq helm-M-x-fuzzy-match t
      helm-recentf-fuzzy-match t
      helm-buffers-fuzzy-matching t) ;; optional fuzzy matching for helm-M-x
