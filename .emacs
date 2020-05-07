(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (company-jedi flycheck-pycheckers kite flycheck-clang-analyzer emacsql-mysql flycheck-pyflakes company-web company-tern spacemacs-theme flycheck company-c-headers ## company-ctags company evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq make-backup-files nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode 1)
(global-flycheck-mode)
(global-company-mode)
(load-theme 'spacemacs-dark)
;;; .emacs ends here
