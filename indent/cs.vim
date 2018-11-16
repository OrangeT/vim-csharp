" Vim indent file
" Language:	C#
" Maintainer:   Aquila Deus
"

" Only load this indent file when no other was loaded.
if exists('b:did_indent')
   finish
endif
let b:did_indent = 1


setlocal indentexpr=GetCSIndent(v:lnum)

function! s:IsCompilerDirective(line)
  return a:line =~? '^\s*#'
endf

function! s:IsAttributeLine(line)
  return a:line =~? '^\s*\[[A-Za-z]' && a:line =~? '\]$'
endf

function! GetCSIndent(lnum) abort

  let this_line = getline(a:lnum)
  let previous_line = getline(a:lnum - 1)

  " Hit the start of the file, use zero indent.
  if a:lnum == 0
    return 0
  endif

  " Compiler directives use zero indent if so configured.
  let is_first_col_macro = s:IsCompilerDirective(this_line) && stridx(&l:cinkeys, '0#') >= 0

  if !is_first_col_macro && s:IsAttributeLine(previous_code_line)
    let ind = indent(a:lnum - 1)
    return ind
  else
    return cindent(a:lnum)
  endif

endfunction

" vim:et:sw=2:sts=2
