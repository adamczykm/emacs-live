(live-add-pack-lib "emacs-helm-ag")
(require 'helm-ag)

(eval-after-load 'projectile
  '(defun projectile-helm-ag ()
     (interactive)
     (helm-ag (projectile-project-root))))
