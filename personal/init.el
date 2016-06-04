;;; rumor has it dired is happier with gls instead of mac os ls
(setq insert-directory-program (executable-find "gls"))
(setq dired-listing-switches "-aBhl --group-directories-first")

(defun d-shell-other-window (cmd &optional buffer-name)
  (switch-to-buffer-other-window
   (get-buffer-create (or buffer-name "*d-shell-other-window*")))
  (insert (shell-command-to-string cmd))
  (goto-char 0))
(global-set-key [(control x) (control j)] 'join-line)
(global-set-key [(control x) (control l)] 'sort-lines)
(global-set-key [(control r)] 'isearch-backward-regexp)
(global-set-key [(control s)] 'isearch-forward-regexp)
(find-file "~/Documents/GTD.org")
(server-start)
