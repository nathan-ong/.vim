execute pathogen#infect()
syntax on               "Turn on syntax highlighting
"add auto indents
filetype plugin indent on
" adjust quickscope highlight colors based on bg
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END
" adjust syntax highlighting for CSS files 
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
colorscheme sublimemonokai
set cpoptions+=$        " add a '$' to note what a 'c' command will alter 
set tabstop=2           " number of visual spaces per tab
set softtabstop=2       " number of spaces a tab will move when editing
set shiftwidth=2        " number of spaces indented within a function
set expandtab           " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom
set cursorline          " highlight current line
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldlevelstart=10   " opens folds
set showmatch           " shows matching parentheses, brackets, etc.
inoremap jk <esc>       " maps jk to escape key
" change mapping for jumping between screen splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" opens splits to the right and underneath first
set splitbelow
set splitright
" map leader nt to :NERDTree
map <leader>nt :NERDTree<CR>
" show dotfiles in NERDTree
map :pretty<CR> :Prettier<CR>
"
