# vim-region.el

Select region as vim.

## Screenshot

## Installation

## Basic Usage
```lisp
(require 'vim-region)
(global-set-key (kbd "C-@") 'vim-region-mode)
```

If you press "C-@", change keybind as vim.

Back to normal keybind if you press the "d"(kill), "y"(copy), "C-y", and "C-g".

```
vim-region-mode

"l"  forward-char
"j"  next-line
"k"  previous-line
"h"  backward-char

"a", "0"  move-beginning-of-line
"e", "$"  move-end-of-line

"y"  vim-region-copy
"d"  vim-region-kill
"v"  vim-region-toggle-mark
"x"  exchange-point-and-mark

"w"  forward-word
"b"  backward-word

"s"  forward-sexp
"S"  backward-sexp

"p"  forward-paragraph
"P"  backward-paragraph

"g"  beginning-of-buffer
"G"  end-of-buffer

"o"  mark-whole-buffer

"C-g"  vim-region-quit
"C-y"  vim-region-yank

"C-f"  vim-region-scroll-up
"C-b"  vim-region-scroll-down

"/"  isearch-forward
"?"  isearch-backward

"f"  vim-region-forward-to-char
";"  vim-region-forward-last-char
"F"  vim-region-backward-to-char
","  vim-region-backward-last-char
```

## AUTHORS
ongaeshi
