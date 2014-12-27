(live-add-pack-lib "color-theme")
(require 'color-theme)

;; use blackbored colour theme
(load-file (concat (live-pack-lib-dir) "cyberpunk-theme.el"))
(load-file (concat (live-pack-lib-dir) "gandalf.el"))

(load-theme 'cyberpunk t)
