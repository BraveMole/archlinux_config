set rnu
let mapleader = "²"

"Copy paste stuff
vmap <C-C> "+y<CR>
imap <C-V> <ESC>"+P<CR>
nmap <C-V> "+P<CR>

"coc keymaps
map <A-d> <Plug>(coc-definition)

inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"

"telescope keymaps 
nnoremap <leader>ff <Cmd>Telescope find_files<CR>
nnoremap <leader>fg <Cmd>Telescope live_grep<CR>
nnoremap <leader>fb <Cmd>Telescope buffers<CR>
nnoremap <leader>fh <Cmd>Telescope help_tags<CR>

"cargo keymaps
map <F5> :!cargo run<CR>
map <F7> :!cargo build<CR>

"barbar keymaps
nnoremap <A-right> :BufferNext<CR>
nnoremap <A-left> :BufferPrevious<CR>
nnoremap <A-&> :BufferGoto 1<CR>
nnoremap <A-é> :BufferGoto 2<CR>
nnoremap <A-"> :BufferGoto 3<CR>
nnoremap <A-'> :BufferGoto 4<CR>
nnoremap <A-(> :BufferGoto 5<CR>
nnoremap <A--> :BufferGoto 6<CR>
nnoremap <A-è> :BufferGoto 7<CR>
nnoremap <A-_> :BufferGoto 8<CR>
nnoremap <A-ç> :BufferGoto 9<CR>
nnoremap <A-à> :BufferGoto 0<CR>
nnoremap <A-w> :BufferClose<CR>

" Split screen keymaps
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-S-down> <C-W>s
nnoremap <C-S-right> <C-W>v

"nvim tree keymaps
nnoremap <A-z> :NvimTreeToggle<CR>:NvimTreeRefresh<CR>

"clang format keymaps
nnoremap <C-s> :ClangFormat<CR>:w<CR>
