set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'wincent/command-t'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-easytags'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
call vundle#end()
filetype plugin indent on
" end vundle
let g:ycm_global_ycm_extra_conf = '$HOME/dotfiles/.ycm_global_ycm_extra_conf'
let g:ycm_confirm_extra_conf = 1
let g:ycm_extra_conf_globlist = ['$HOME/dotfiles/.ycm_extra_conf.py', '/home/eve/Github/myGL/.ycm_extra_conf.py']
let g:colorscheme_switcher_exclude = []
let mapleader = ","

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
" a tab is 4 columns long
set tabstop=4
set shiftwidth=4
" convert tabs to spaces
set expandtab
" caries over the indentation level
set autoindent
" display line numbers
set nu
" syntax highlighting
syntax on
" i have a dark background
set background=dark
" for python files, use any python indentation guides
" au FileType *.py filetype indent plugin on
au FileType *.html colo delek

" LaTeX exponent
" visual select text and @e to convert to superscript
au FileType *.tex let @e = "da$$^[i^{}^[hp"
au FileType *.py filetype indent plugin on
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

autocmd CompleteDone * pclose

