if exists('g:loaded_relatively_complete') || &cp
  finish
endif
let g:loaded_relatively_complete = 1

let s:cpo_save = &cpo
set cpo&vim

command! RelativelyCompleteFile :call relative_file_complete#SaveAndRestoreOnComplete()
inoremap <Plug>RelativelyCompleteFile <c-o>:RelativelyCompleteFile<CR><C-x><C-f>

let &cpo = s:cpo_save
unlet s:cpo_save
