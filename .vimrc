set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe' " this line
Plugin 'Valloric/ListToggle'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on
" end vundle
let g:ycm_global_ycm_extra_conf = '$HOME/dotfiles/.ycm_global_ycm_extra_conf'
let g:ycm_extra_conf_globlist = ['$HOME/dotfiles/.ycm_extra_conf.py', '/home/eve/Github/myGL/.ycm_extra_conf.py']
let mapleader = ","
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
colo elflord
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

