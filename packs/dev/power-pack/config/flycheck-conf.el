(live-add-pack-lib "flycheck")
(require 'let-alist)
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
