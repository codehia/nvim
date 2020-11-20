nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
nmap <F6> <Plug>(ale_fix)

let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let b:ale_fixers={'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
