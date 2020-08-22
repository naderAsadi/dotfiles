
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/indentpython.vim'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-syntastic/syntastic'
"Plug 'nvie/vim-flake8'
Plug 'joshdick/onedark.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nerd Tree Configuration
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=25
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap za

" Better python formatting
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

" Bad Whitespace highlighting
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred

" Syntax
let python_highlight_all=1
syntax on

" Color Scheme
if (has("autocmd"))
  augroup colorextend
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight("Comment", { "fg": { "cterm": 243 } })
    autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": { "cterm": 242 } })
  augroup END
endif

let g:onedark_color_overrides = {
\ "black": {"gui": "#000000", "cterm": "256", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}

colorscheme onedark
" Defauklt terminal color used to be #454649
" Favorite terminal background color is #2B3240

" Lightline color
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

" Other stuff :)
set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells

