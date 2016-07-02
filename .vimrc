set number
set autochdir
" a tab is 4 columns long
set tabstop=4
set shiftwidth=4
" convert tabs to spaces
set expandtab
set fillchars+=vert:\ 
set nocompatible
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let $PYTHONPATH='/usr/lib/python3.5/site-packages'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/ListToggle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
"Plugin 'honza/vim-snippets'
"Plugin 'kien/ctrlp.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'mattn/emmet-vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'wincent/command-t'
"Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'will133/vim-dirdiff'
call vundle#end()
" end vundle
filetype plugin indent on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

filetype off

" syntax highlighting
syntax on

let mapleader = ","

let g:ycm_global_ycm_extra_conf = '$HOME/dotfiles/.ycm_global_ycm_extra_conf'
let g:ycm_confirm_extra_conf = 1
let g:ycm_extra_conf_globlist = ['$HOME/dotfiles/.ycm_extra_conf.py', '/home/eve/Github/myGL/.ycm_extra_conf.py']
let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_server_keep_logfiles = 1

let g:colorscheme_switcher_exclude = []

"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

" gruvbox
" g:gruvbox_bold
" g:gruvbox_italic
" g:gruvbox_underline
" g:gruvbox_undercurl
" g:gruvbox_termcolors
" nnoremap <leader>r :Ypf{a"f}i":s/, /", "/g02dwichar* eaNames[]
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <down> gj
nnoremap <up> gk
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>cp "+p
nnoremap <leader>cy "+y
vnoremap <F2> d:execute 'normal i' . join(sort(split(getreg('"'))), ' ')<CR>
cmap w!! w !sudo tee > /dev/null %
set ignorecase
set smartcase

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
au FileType *.tex let @e = "da$$^[i^{}^[hp"
au FileType *.py filetype indent plugin on
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

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
