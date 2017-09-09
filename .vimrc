silent! source .vimlocal
autocmd FileType cpp set keywordprg=cppman

" syntax highlighting
syntax on

set encoding=utf-8
"set guifont=Consolas:h16

filetype plugin indent on
set viminfo='1000,<50,s10,h,rA:,rB:

" display line numbers
set number

set ignorecase
set smartcase
set incsearch
set autochdir

set nocompatible

nnoremap <C-S> :w<CR>
nnoremap <C-_> :call NERDComment(0, "toggle")<CR>+
nnoremap <CR> :
nnoremap <F2> :lnext<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F7> :bN<CR>
nnoremap <F8> :bn<CR>
nnoremap <Space>ae :!./a.out<CR>
nnoremap <Space>ex :Explore<CR>
nnoremap <Space>gc Go<ESC>!!g++ -std=c++14 -Wall -Wextra -pedantic <C-R>%<CR>
nnoremap <Space>cl Go<ESC>!!clang -g -std=c++1z -Wall -Wextra -pedantic -lstdc++ <C-R>%<CR>
nnoremap <Space>pp :ctrlp<CR>
nnoremap <Space>rc :edit $MYVIMRC<CR>
nnoremap <Space>rr :source $MYVIMRC<CR>
nnoremap <UP> <c-y>gk
nnoremap <down> <C-E>gj
noremap <Space>cc "+y
noremap <Space>cp "+p
vnoremap * y/<C-R>"<CR>
vnoremap <Space>be sbegin(<C-R>"), end(<C-R>")<ESC>
vnoremap <Space>cc "+y
vnoremap <Space>cp "+p
vnoremap <Space>el yo<ESC>!!<C-R>"<CR>
nnoremap <Space>el Vyo<ESC>!!<C-R>"<CR>

vnoremap < <gv
vnoremap > >gv

                                    "a tab is 4 columns long
set tabstop=4
set shiftwidth=4
                                    " convert tabs to spaces
set expandtab
set fillchars+=vert:\ 

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
