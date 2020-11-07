source autoload/ShowFullDefinition.vim
setlocal define=^definition

nnoremap <buffer> [d :<C-U>call ShowFullDefinition#FirstDefinition('END-OF-DEF')<CR>

finish

definition PI 3.14 END-OF-DEF
definition alist
[1,
2,
3,
4
] END-OF-DEF
definition MissingEndPattern

PI
alist
MissingEndPattern
