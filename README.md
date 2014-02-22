# vim-region.el

Select region as vim.

## Screenshot

## Installation
You can install from MELPA with package.el

```
M-x package-install vim-region
```

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
"p"  vim-region-yank
"c"  vim-region-copy
"x"  vim-region-delete-char

"z"  exchange-point-and-mark
"v"  vim-region-toggle-mark
"q"  vim-region-toggle-eternal

"w"  forward-word
"b"  backward-word

"s"  forward-sexp
"S"  backward-sexp

"t"  vim-region-mark-symbol
"r"  vim-region-query-replace

"m"  forward-paragraph
"M"  backward-paragraph

"g"  beginning-of-buffer
"G"  end-of-buffer

"O"  mark-whole-buffer

"C-f"  vim-region-scroll-up
"C-b"  vim-region-scroll-down

"/"  isearch-forward
"n"  isearch-repeat-forward
"?"  isearch-backward
"N"  isearch-repeat-backward

"f"  vim-region-forward-to-char
";"  vim-region-forward-last-char
"F"  vim-region-backward-to-char
","  vim-region-backward-last-char

"u"  undo

"+"  er/expand-region
```

## AUTHORS
- ongaeshi
- Syohei YOSHIDA
