(defconst my-cquery-packages '(cquery))

(defun my-cquery/init-cquery ()
  (add-to-load-path (expand-file-name "~/.emacs.d/private/local"))
  (use-package lsp-cquery
    :after lsp-mode
    :config
    (setq cquery/root-dir (expand-file-name "~/Dev/Util/cquery/"))
    (add-hook 'c-mode-common-hook #'my//enable-cquery-if-compile-commands-json))
  )

(defun my-cquery/post-init-cquery ()
  ;; (spacemacs/set-leader-keys
  ;;   "jl" (lambda ()
  ;;          (interactive)
  ;;          (if (cquery-is-indexed) (cquery-imenu) (call-interactively 'spacemacs/helm-jump-in-buffer)))
  ;;   )
  )
