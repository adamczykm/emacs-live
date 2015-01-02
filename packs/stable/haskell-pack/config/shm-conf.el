(live-add-pack-lib "structured-haskell-mode/elisp")

(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(require 'f)
(setq shm-program-name (concat (expand-file-name "~/.emacs.d/packs/stable/haskell-pack") "/lib/structured-haskell-mode"))
