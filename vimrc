filetype plugin indent on
syntax on

set encoding=utf-8
set ruler
set linespace=5
set tabstop=4 shiftwidth=4 expandtab

nnoremap te :tabe 
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap td :tabclose<CR>

"relative line number"
set number relativenumber
augroup numertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave *     set relativenumber
    autocmd BufEnter,FocusGained,InsertLeave *.tex set norelativenumber
    autocmd BufLeave,FocusLost,InsertEnter   *     set norelativenumber
augroup END

let g:tex_flavor='latex'
let g:ycm_server_python_interpreter = 'python3'
let g:vimtex_quickfix_mode=0
let g:indentLine_conceallevel=0

"make YCM compatible with Ultisnips using supertab
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'

"key bindings for Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]

"Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
  \ "mode": "passive" }
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex', { 'for': 'tex' }

Plug 'Valloric/YouCompleteMe'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'ervandew/supertab'

Plug 'vim-syntastic/syntastic'

Plug 'Yggdroot/indentLine'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

call plug#end()
