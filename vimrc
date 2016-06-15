" Vundle's stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

Plugin 'gmarik/vundle.git'
Plugin 'jamessan/vim-gnupg'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'reedes/vim-lexical'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/gitignore'

set t_Co=256
colorscheme jellybeans
let g:airline_theme='jellybeans'

set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,cp1251

set number
set relativenumber

" The 'NerdTree' tree style for built-in 'netrw'
let g:netrw_liststyle=3

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

let mapleader=","

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

"nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Statusline always active
set laststatus=2

" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_compiler = 'gcc'

" Lexical stuff
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
let g:lexical#spelllang = ['en_us', 'ru_ru']

" Supertab
let g:SuperTabDefaultCompletionType = 'context'

set wildignore+=*.so,*.swp,*.zip,*.mp3,*.pdf,*.xls,*.odt,*.ods,*.doc,*.docx,*.xlsx

" Indent stuff
set autoindent
set expandtab
set softtabstop=3
set shiftwidth=3

" vimrc auto reload
augroup myvimrc
   au!
   au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

