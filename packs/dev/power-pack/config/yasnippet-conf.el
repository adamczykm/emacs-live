(live-add-pack-lib "yasnippet")
(require 'yasnippet)
(setq live-yasnippet-dir (concat live-etc-dir "snippets"))
(setq basic-yasnippet-dir (concat live-etc-dir "basic-snippets"))
(setq yas-snippet-dirs `(,live-yasnippet-dir
                         ,basic-yasnippet-dir))
(yas-global-mode 1)
