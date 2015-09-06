;; Add el-get packages to load-path
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; Try install el-get if not installed
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; Set el-get recipes path
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;; El-get packages to install recipes
(setq el-get-sources
      '((:name solarized-theme
               :type git
               :url "https://github.com/bbatsov/solarized-emacs.git"
               :compile "solarized-theme")
        (:name nav
               :type git
               :url "https://github.com/ancane/emacs-nav"
               :compile "nav.el")))

;; El-get packages to install
(setq packages-to-install 
      (append '(nav
                autopair
                dash
                solarized-theme
                ergoemacs-mode)
              (mapcar 'el-get-source-name el-get-sources))) 

;; Sync packages listed to install
(el-get 'sync packages-to-install)