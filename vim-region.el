;;; vim-region.el --- Select region as vim

;; Copyright (C) 2013 by ongaeshi

;; Author: ongaeshi <ongaeshi0621@gmail.com>
;; URL: https://github.com/ongaeshi/emacs-vim-region
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; To use this package, add following code to your init.el or .emacs
;; (require 'vim-region)
;; (global-set-key (kbd "C-@") 'vim-region-mode)
;;

;;; Code:

(defun vim-region-copy ()
  (interactive)
  (kill-ring-save (region-beginning) (region-end))
  (vim-region-mode 0)
  )

(defun vim-region-kill ()
  (interactive)
  (kill-region (region-beginning) (region-end))
  (vim-region-mode 0)
  )

(defun vim-region-quit ()
  (interactive)
  (vim-region-mode 0)
  (keyboard-quit))

(defun vim-region-yank ()
  (interactive)
  (vim-region-mode 0)
  ;;(yank)
  (cua-paste nil)
  )

(defun vim-region-scroll-up ()
  (interactive)
  (scroll-up)
  (recenter))

(defun vim-region-scroll-down ()
  (interactive)
  (scroll-down)
  (recenter))

;;;###autoload
(define-minor-mode vim-region-mode
  "vim-region-mode"
  :lighter " vim-region"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "l") 'forward-char)
            (define-key map (kbd "j") 'next-line)
            (define-key map (kbd "k") 'previous-line)
            (define-key map (kbd "h") 'backward-char)

            (define-key map (kbd "a") 'move-beginning-of-line)
            (define-key map (kbd "e") 'move-end-of-line)

            (define-key map (kbd "y") 'vim-region-copy)
            (define-key map (kbd "d") 'vim-region-kill)
            (define-key map (kbd "x") 'exchange-point-and-mark)
            
            (define-key map (kbd "w") 'forward-word)
            (define-key map (kbd "b") 'backward-word)
            
            (define-key map (kbd "s") 'forward-sexp)
            (define-key map (kbd "S") 'backward-sexp)

            (define-key map (kbd "p") 'forward-paragraph)
            (define-key map (kbd "P") 'backward-paragraph)
            
            (define-key map (kbd "g") 'beginning-of-buffer)
            (define-key map (kbd "G") 'end-of-buffer)

            (define-key map (kbd "f") 'forward-defun)
            (define-key map (kbd "F") 'backward-defun)
            
            (define-key map (kbd "o") 'mark-whole-buffer)

            (define-key map (kbd "C-g") 'vim-region-quit)
            (define-key map (kbd "C-y") 'vim-region-yank)

            (define-key map (kbd "v") 'vim-region-scroll-up)
            (define-key map (kbd "V") 'vim-region-scroll-down)

            map))

(add-hook 'vim-region-mode-hook 
          (lambda ()
            (if vim-region-mode
                (progn
                  ;; (message "Visual Mark Mode Start")
                  ;; (set-mark (point))
                  (cua-set-mark)
                 ))
            ;;(set-mark-command)
            )) ; Want to remove cua

(provide 'vim-region)
;;; anzu.el ends here
