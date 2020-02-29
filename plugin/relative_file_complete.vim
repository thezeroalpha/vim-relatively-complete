command! CompleteRelative :call relative_file_complete#SaveAndRestoreOnComplete()
inoremap <Plug>CompleteRelative <c-o>:CompleteRelative<CR><C-x><C-f>
