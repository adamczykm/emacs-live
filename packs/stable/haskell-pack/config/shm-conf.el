(live-add-pack-lib "structured-haskell-mode/elisp")

(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(require 'f)
(setq shm-program-name "~/.cabal/bin/structured-haskell-mode")
