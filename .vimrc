" Install plug.vim if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === BEGIN VIM-PLUG ===
call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'sevko/vim-nand2tetris-syntax'
call plug#end()
" === END VIM-PLUG ===

" Colorscheme
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-material-darker " To see other run `base16_ <tab>` in terminal

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" Tabs 4 space
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Remap ESC
inoremap jk <Esc>

" Display line numbers
set number

" Highlight current line
set cursorline

" Folds
set foldmethod=syntax

" Search as caracters are entered
set incsearch

" Relative line numbers
function! g:ToggleNuMode()
    if &rnu == 1
        set rnu!
    elseif &ru == 1
        set rnu
    else
        set nu 
    endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" Ctags
set autochdir 
set tags+=./tags;

" Emmet Config
let g:user_emmet_leader_key=','
