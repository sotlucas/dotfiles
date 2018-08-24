" Colors {{{
syntax enable " Colorscheme
colorscheme badwolf " Syntax  
" }}}
" Spaces & Tabs {{{
set tabstop=4 sw=4 " Set tab to 4 visual spaces
" }}}
" UI Config {{{
set number " Show line number
set showcmd " Show command in in bottom bar
set cursorline " Highlight current line
set wildmenu " Visual autocomplete for command menu
set showmatch " Highlight matching [{()}]
" }}}
" Search {{{ 
set incsearch " Search as caracters are entered
set hlsearch " Highlight search matches
nnoremap <leader><space> :nohlsearch<CR> " Turn off search highlight
" }}}
" Folding {{{
set foldenable
set modeline
set modelines=1
" }}}
" vim: foldmethod=marker foldlevel=0
