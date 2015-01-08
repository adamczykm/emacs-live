(live-add-pack-lib "haskell-mode")
(require 'haskell-mode-autoloads)

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))

;;* Hask tags
(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))
(custom-set-variables '(haskell-tags-on-save t))

;;* use cabal repl instead of ghci
(custom-set-variables '(haskell-process-type 'cabal-repl))
