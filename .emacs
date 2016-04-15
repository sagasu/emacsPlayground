(setq default-directory "C:/worek/" )

(global-font-lock-mode 1)
(show-paren-mode 1)
(setq dired-recursive-deletes 'always)
(setq make-backup-files nil) ;added recently

(global-set-key [f8] '(lambda () (interactive) (find-file "f:/worek2/other/.emacs")))

(defun powershell-clear-results ()
 "clear powershell results"
 (interactive)
 (beginning-of-buffer)
 (delete-non-matching-lines "<<<<")
 (replace-regexp ".*<<<< (\"" "")
 (beginning-of-buffer)
 (replace-regexp "\")" "")
)

(defun sitemap-make-ps ()
 "clear sitemap make it ps"
 (interactive)
 (beginning-of-buffer)
 (delete-non-matching-lines "<loc>")
 (replace-regexp "^.*<loc>" "$page = (New-Object System.Net.WebClient).DownloadString(\"")
 (beginning-of-buffer)
 (replace-regexp "</loc>.*" "\")")
)

(defun ps-from-redirection-table2 ()
 "ps from redirection table"
 (interactive)
 (beginning-of-buffer)
 (replace-regexp "^" "$page = (New-Object System.Net.WebClient).DownloadString(\"")
 (beginning-of-buffer)
 (replace-regexp "$" "\")")
)

(defun ps-from-redirection-table ()
 "ps from redirection table"
 (interactive)
 (beginning-of-buffer)
 (replace-regexp "^" "$page = (New-Object System.Net.WebClient).DownloadString(\"http://www.trafalgar.com")
 (beginning-of-buffer)
 (replace-regexp "$" "\")")
)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  ;; (open-line 1)
  ;; (next-line 1)
  (yank)
)

(defun conf-itropics-trunk ()
  ""
  (interactive)
  (find-file "c:/development/iTropics/trunk/config"))

(defun duplicate-all-lines ()
  (interactive)
  (beginning-of-buffer)
  (dotimes (i 2618)
    (duplicate-line)
    (next-line))
)

(add-to-list 'load-path "c:/worek/emacsPlugins/color-theme-6.6.0")
;; (add-to-list 'load-path "c:/worek/emacsPlugins/pink-bliss")
;; (add-to-list 'load-path "c:/worek/emacsPlugins/dired")
;; (add-to-list 'load-path "c:/worek/emacsPlugins/powershell-mode")
;; (add-to-list 'load-path "c:/worek/emacsPlugins/emacs-w3m-1.4.4")

;; ;color-theme
(require 'color-theme)
(color-theme-initialize)

;; ;pink-bliss
;; (require 'pink-bliss)
(color-theme-xp)

;(find-file "c:/worek/other/maslo")


;; ;dired plus
;; (require 'dired+)

;; ;powershell
;; (require 'powershell-mode)
;; (setq auto-mode-alist (cons '("\\.html$" . powershell-mode) auto-mode-alist))

;; ;this version of emacs is not supported
;; ;(require 'w3m)

;; ;CEDET
;; ;(load-file "c:/worek/emacsPlugins/cedet-1.1/common/cedet.el")
;; ;(global-ede-mode 1)                      ; Enable the Project management system
;; ;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; ;(global-srecode-minor-mode 1)            ; Enable template insertion menu
;; (semantic-mode 1)

(defun load-dot-emacs ()
 "load dot emacs"
 (interactive)
 (load-file "f:/worek2/other/.emacs"))

;; (defun dot-emacs ()
;;  "find file .emacs"
;;  (interactive)
;;  (find-file "c:/worek/other/.emacs"))

;; (defun worek ()
;;  "find folder worek"
;;  (interactive)
;;  (find-file "c:/worek"))

;; (defun desktop ()
;;  "find desktop"
;;  (interactive)
;;  (find-file "c:/Users/Mateusz.Kopij/Desktop"))

;; (defun temp ()
;;  "find temp"
;;  (interactive)
;;  (find-file "c:/worek/tmp7"))

;; (defun tmp ()
;;  "find tmp"
;;  (interactive)
;;  (find-file "c:/worek/tmp7"))

(defun maslo ()
 "find maslo"
 (interactive)
 (find-file "f:/worek2/other/maslo"))

;;     (defun wget-via-powershell (url &optional ext)
;;       "get the contents of a URL into a file via powershell. The EXT
;;             is the extension to use on the destination file. It should begin
;;             with a dot.
;;             "
;;       (flet ((rris (a1 a2 s) (replace-regexp-in-string a1 a2 s)))
;;         (let* ((ext (or ext ".txt"))
;;                (url-tmpf (make-temp-file "emacs-wget-" nil ext))
;;                (ps-cmd (concat
;;                         "(new-object System.Net.WebClient).DownloadFile("
;;                         (rris (char-to-string 34)
;;                               (char-to-string 39)
;;                               (pp-to-string url))
;;                         ","
;;                         (rris "/"
;;                               "\\\\"
;;                               (rris (char-to-string 34)
;;                                     (char-to-string 39)
;;                                     (pp-to-string url-tmpf)))
;;                         ")"))
;;                (shell-command
;;                 (format "%s -Command %s"
;;                         bundlify-powershell-exe
;;                         (concat "\"& {" ps-cmd "}\""))))

;;           (shell-command-on-region (point) (point)
;;                                    shell-command
;;                                    nil nil nil)
;;           ;;(message "downloaded to %s" url-tmpf)
;;           url-tmpf)))
