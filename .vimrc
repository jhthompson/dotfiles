" install vim-plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" formatting
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" jsx support
" Plug 'yuezk/vim-js'
" Plug 'maxmellon/vim-jsx-pretty'

" multiple language support
Plug 'sheerun/vim-polyglot'

" coc (conquer of completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" run Prettier after every write
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql,*.html,*.md PrettierAsync

" airline at the bottom of vim displaying information
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" necessary for airline git status
Plug 'tpope/vim-fugitive'

call plug#end()

" set airline theme to something nice
let g:airline_theme='angr'

" line number enable
set number

" number of visual spaces per TAB
set tabstop=2

" number of spaces in tab when editing
set softtabstop=2

" tabs are spaces
set expandtab   

" highlight current line
set cursorline 

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch 

" highlight matches
" set hlsearch    

" turn off search highlight
" nnoremap <leader><space> :nohlsearch<CR>

set relativenumber

set shiftwidth=2
