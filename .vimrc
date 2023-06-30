" Install Plugins
call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" File explorer 
Plug 'preservim/nerdtree'
  let NERDTreeShowHidden=1

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
" Plug 'preservim/tagbar'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" latex configuration
Plug 'lervag/vimtex'
Plug 'tpope/vim-dispatch'
Plug 'SirVer/ultisnips'
  let g:UltiSnipsSnippetDirectories=["UltiSnips"]
  let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
  let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
  let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

" Vim tutorial game
" Plug 'ThePrimeagen/vim-be-good'

call plug#end()

filetype plugin on

set encoding=utf-8

set nobackup
set nowritebackup

set updatetime=300

set signcolumn=yes

set number

set history=1000

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

if has("syntax")
  syntax on 
endif

colorscheme gruvbox

" Keys
inoremap jk <Esc>


if has("windows")
  set rtp+=~/.vim 
endif

" Download vim-plug from github
if empty(glob('~/.vim/autoload/plug.vim')) 
  if has("unix")
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  elseif has("windows")
    set shell=powershell
    silent !iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
          \  ni $HOME/.vim/autoload/plug.vim -Force 
  endif  
  autocmd VimEnter * PlugInstall 
endif 

" map <F5> <Esc>:w!<CR>:!make && ./<C-R>=expand('%:t:r')<CR><CR>
" map <F5> <Esc>:w!<CR>:!make && ./main<CR>

" Return to last edit position when opening files 
au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif


