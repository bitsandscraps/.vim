filetype plugin indent on

set encoding=utf-8
set number
set ruler
set expandtab
set linespace=5

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>
noremap <F1> <Esc>
map <F3> <F2>

let g:tex_flavor='latex'

"make YCM compatible with Ultisnips using supertab
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'

"key bindings for Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
  \ "mode": "active",
  \ "passive_filetypes": ["tex"] }

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'ervandew/supertab'

Plug 'vim-syntastic/syntastic'

Plug 'Yggdroot/indentLine'

call plug#end()
