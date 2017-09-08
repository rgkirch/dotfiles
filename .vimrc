silent! source .vimlocal

" syntax highlighting
syntax on

set encoding=utf-8
"set guifont=Consolas:h16

filetype plugin indent on

nnoremap <C-S> :w<CR>
nnoremap <F7> :bN<CR>
nnoremap <F8> :bn<CR>
nnoremap <SPACE>rr :source $MYVIMRC<CR>
nnoremap <SPACE>rc :edit $MYVIMRC<CR>
nnoremap <CR> :
nnoremap <down> <C-E>gj
nnoremap <F5> :buffers<CR>:buffer<SPACE>
nnoremap <F7> :bn<CR>
nnoremap <F8> :bn<CR>
nnoremap <SPACE>ex :Explore<CR>
nnoremap <SPACE>pp :ctrlp<CR>
nnoremap <SPACE>rr :source $MYVIMRC<CR>
nnoremap <UP> <c-y>gk
noremap <SPACE>cc "+y
noremap <SPACE>cp "+p
vnoremap * y/<C-R>"<CR>
vnoremap <SPACE>cc "+y
vnoremap <SPACE>cp "+p
vnoremap <SPACE>ee yo<ESC>!!<C-R>"<CR>
vnoremap <SPACE>el Vyo<ESC>!!<C-R>"<CR>
nnoremap <SPACE>gc Go<ESC>!!g++ -std=c++14 -Wall <C-R>%<CR>
vnoremap <SPACE>be sbegin(<C-R>"), end(<C-R>")<ESC>

vnoremap < <gv
vnoremap > >gv

set number
set autochdir

                                    "a tab is 4 columns long
set tabstop=4
set shiftwidth=4
                                    " convert tabs to spaces
set expandtab
set fillchars+=vert:\ 
set nocompatible

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let $PYTHONPATH='/usr/lib/python3.5/site-packages'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/ListToggle'
"Plugin 'honza/vim-snippets'
"Plugin 'majutsushi/tagbar'
"Plugin 'mattn/emmet-vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'vim-utils/vim-man'
Plugin 'ElmCast/elm-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'rust-lang/rust.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomlion/vim-solidity'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
"Plugin 'will133/vim-dirdiff'
"Plugin 'wincent/command-t'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
call vundle#end()
" end vundle

set laststatus=2

let g:airline#extensions#ale#enabled = 0
"let g:ycm_global_ycm_extra_conf = '$HOME/dotfiles/.ycm_global_ycm_extra_conf'
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_extra_conf_globlist = ['$HOME/dotfiles/.ycm_extra_conf.py', '/home/eve/Github/myGL/.ycm_extra_conf.py']
"let g:ycm_complete_in_comments = 1 
"let g:ycm_seed_identifiers_with_syntax = 1 
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_server_keep_logfiles = 1

"let g:colorscheme_switcher_exclude = []

" g:gruvbox_bold
" g:gruvbox_italic
" g:gruvbox_underline
" g:gruvbox_undercurl
" g:gruvbox_termcolors
" nnoremap <leader>r :Ypf{a"f}i":s/, /", "/g02dwichar* eaNames[]

set ignorecase
set smartcase
set incsearch

" syntactic recommended
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
" end recommended syntactic

" backups and other junky files
" set backupdir=~/.vim/backup     " get backups outta here
" set directory=~/.vim/swap       " get swapfiles outta here
" set undodir=~/.vim/undo         " persistent undo storage
" set undofile                    " persistent undo on
set writebackup                 " temp backup during write
" end

set splitright

" set coloscheme
colo gruvbox
" caries over the indentation level
set autoindent
" display line numbers
set nu
" i have a dark background
set background=dark

" LaTeX exponent
" visual select text and @e to convert to superscript
"au FileType *.tex let @e = "da$$^[i^{}^[hp"
"au FileType *.py filetype indent plugin on
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"autocmd CompleteDone * pclose

"let g:syntastic_always_populate_loc_list = 1
" -----------------------
" Syntastic configuration
" -----------------------
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" -------------------
" CtrlP configuration
" -------------------
"let g:ctrlp_show_hidden=1


" -----------------------
" UltiSnips configuration
" -----------------------
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-i>"
"let g:UltiSnipsJumpBackwardTrigger="<c-o>"
