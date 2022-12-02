set nu rnu
set splitbelow
set splitright
set scrolloff=40
" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" cpp lints
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" rainbow 
let g:rainbow_active = 1
function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END
func! s:my_colors_setup() abort
  highlight CocFloating ctermbg =brown 
  highlight CocErrorFloat ctermfg=black 
  highlight CocInfoFloat ctermfg=black 
  highlight CocHintFloat ctermfg=black
  highlight CocWarningFloat ctermfg=black
endfunc

augroup colorscheme_coc_setup | au!
  au VimEnter * call s:my_colors_setup()
augroup END
