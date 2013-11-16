# vim-region.el

## Summary 
Select region as vim.

## Screenshot
Comming soon..

## Requirements
Emacs 24 or higher

## Installation
Comming soon..

## Basic Usage
```lisp
(require 'vim-region)
(global-set-key (kbd "C-@") 'vim-region-mode)
```

## Customizetion
```lisp
;; Need thing-opt(http://www.emacswiki.org/emacs/download/thing-opt.el)
(define-key vim-region-mode-map (kbd "q") 'mark-word*)
(define-key vim-region-mode-map (kbd "z") 'mark-sexp*)
(define-key vim-region-mode-map (kbd "i") 'mark-filename)
(define-key vim-region-mode-map (kbd "u") 'mark-url)
```

## AUTHORS
ongaeshi
