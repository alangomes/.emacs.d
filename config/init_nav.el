;; File tree manager

;; Adding remove linum mode to after changing mode hook
(add-hook 'after-change-major-mode-hook 'remove-linum-mode-of-nav-buffer)
