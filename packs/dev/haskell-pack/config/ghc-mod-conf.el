;;* Add ghc-mod exec to PATH

;; -- already done it :)
;; (let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
;;   (setenv "PATH" (concat my-cabal-path ":" (getenv "PATH")))
;;   (add-to-list 'exec-path my-cabal-path))
(live-add-pack-lib "ghc-mod")
(require 'ghc)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
