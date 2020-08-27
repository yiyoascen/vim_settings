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
    (js-format emmet-mode tern company-go flycheck-golangci-lint evil-numbers company-ctags format-all flycheck-clangcheck flycheck-clang-tidy flycheck-rust rustic racer rust-mode company-racer flycheck-clang-analyzer spacemacs-theme flycheck company-c-headers ## company evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq make-backup-files nil)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(setq rust-format-on-save t)
(setq auto-save-default nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode 1)
(global-flycheck-mode)
(global-company-mode)
(load-theme 'spacemacs-dark)
(add-hook 'before-save-hook 'format-all-buffer)
(evil-global-set-key 'insert (kbd "TAB") 'company-complete)
(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)
(define-key evil-normal-state-map (kbd "C-z") 'suspend-emacs)
(setq company-clang-insert-arguments nil)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)
;;; (evil-global-set-key 'normal (kbd "Q") 'format-all-buffer)

;;; .emacs ends here
