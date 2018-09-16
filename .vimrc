" General {{{
execute pathogen#infect()
syntax on
filetype plugin indent on
" }}}
" Colors {{{
syntax enable
colorscheme gruvbox 
set background=dark
set t_Co=256
let g:gruvbox_contrast_dark="hard"
" }}}
" Spaces & Tabs {{{
set tabstop=4 expandtab sw=4 " Set tab to 4 visual spaces
" }}}
" UI Config {{{
set number 			" Show line number
set showcmd 		" Show command in in bottom bar
set cursorline 		" Highlight current line
set wildmenu 		" Visual autocomplete for command menu
set showmatch 		" Highlight matching [{()}]
set colorcolumn=80 	" Line limit
" }}}
" Search {{{ 
set incsearch " Search as caracters are entered
" }}}
" Folding {{{
set foldenable
set modeline
set modelines=1
" use Ctrl+L to toggle the line number counting method
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
" }}}
" Status Bar {{{
set laststatus=2
let g:airline_theme='gruvbox'
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_powerline_fonts = 1
" }}}
" vim: foldmethod=marker foldlevel=0
