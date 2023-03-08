vim.api.nvim_exec([[
filetype plugin on

set encoding=utf-8

set nobackup
set nowritebackup

set updatetime=300

set signcolumn=yes

set number " Line number

set history=1000 " Undo depth

set shortmess+=A " Turn off annoying swapfile errors on file load

" Indentation
set autoindent 
" set smartindent
" set cindent

set tabstop=4
set shiftwidth=4
set expandtab

" Highlighting
set hlsearch 
set showmatch
set ignorecase 
set incsearch

colorscheme gruvbox

if has("syntax")
  syntax on 
endif
]], false)


