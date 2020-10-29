function! ShowFullDefinition#FirstDefinition(end_pattern) abort
    redir => dlist
    try
        " silent normal! [D
        silent execute "dlist " . expand('<cword>')
    finally
        redir END
    endtry
    let dlist = split(dlist, '\n')
    let filename = dlist[0]
    let definition = dlist[1]
    let line_nr = split(definition)[1]
    let file_contents = readfile(filename)
    let file_contents = file_contents[line_nr-1:-1]
    let end_of_definition = match(file_contents, a:end_pattern)
    echo join(file_contents[0:end_of_definition], "\n")
endfunction