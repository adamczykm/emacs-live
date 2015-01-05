(live-add-pack-lib "emacs-python-environment")
(live-add-pack-lib "emacs-deferred")
(live-add-pack-lib "emacs-ctable")
(live-add-pack-lib "emacs-epc")
(live-add-pack-lib "emacs-jedi")

(require 'auto-complete-config)
(ac-config-default)

(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
