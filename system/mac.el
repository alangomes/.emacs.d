;; Configuration options just for Mac OS

;; Command Key on Mac as Meta Key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Global set keys
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;; Add path of the pdflatex, for my Snow Leopard
(setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
