# vim-show-full-definition

See the full definition, not just the first line when using [d (unless you're
lucky and program in C). No mappings are provided, only one function which shows
the first definition found under the cursor. Put this in your
`after/ftplugin/<filetype>` to try it out.

```vim
nnoremap <lhs> :<C-U>call ShowFullDefinition#FirstDefinition(<end_of_definition_pattern>)<CR>
```

`<lhs>` is the key you want to map and `<end_of_definition_pattern>` is a
regular expression that tells the plugin when the definition has ended. Have a
look in the ftplugins under `$VIMRUNTIME` to find patterns for end of functions
for example. If you use erlang and want to override `[d`, do

```vim
nnoremap <buffer><silent> [d
            \ :<C-U>call ShowFullDefinition#FirstDefinition('^[^%]*\.\s*\(%.*\)\?$')<CR>
```vim
