;; Configuration options just for Mac OS

;; Global set keys
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;; Add path of the pdflatex, for my Snow Leopard
(setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))