" General {{{
execute pathogen#infect()
syntax on
filetype plugin indent on
imap jk <ESC>
" }}}
" Colors {{{
colorscheme gruvbox 
set background=dark
set t_Co=256
let g:gruvbox_contrast_dark="hard"
" }}}
" Spaces & Tabs {{{
set tabstop=4 expandtab sw=4 " Set tab to 4 spaces
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
set foldmethod=indent
set foldlevel=2
" lets you paste from other sources
set pastetoggle=<F2>
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
" NERDTree {{{
" use Ctrl+N to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>
" git indicators
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
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
" Greek {{{
map! <C-v>GA Γ
map! <C-v>DE Δ
map! <C-v>TH Θ
map! <C-v>LA Λ
map! <C-v>XI Ξ
map! <C-v>PI Π
map! <C-v>SI Σ
map! <C-v>PH Φ
map! <C-v>PS Ψ
map! <C-v>OM Ω
map! <C-v>al α
map! <C-v>be β
map! <C-v>ga γ
map! <C-v>de δ
map! <C-v>ep ε
map! <C-v>ze ζ
map! <C-v>et η
map! <C-v>th θ
map! <C-v>io ι
map! <C-v>ka κ
map! <C-v>la λ
map! <C-v>mu μ
map! <C-v>xi ξ
map! <C-v>pi π
map! <C-v>rh ρ
map! <C-v>si σ
map! <C-v>ta τ
map! <C-v>ps ψ
map! <C-v>om ω
map! <C-v>ph ϕ
" }}}
" Math {{{
map! <C-v>ll →
map! <C-v>hh ⇌
map! <C-v>kk ↑
map! <C-v>jj ↓
map! <C-v>= ∝
map! <C-v>~ ≈
map! <C-v>!= ≠
map! <C-v>!> ⇸
map! <C-v>~> ↝
map! <C-v>>= ≥
map! <C-v><= ≤
map! <C-v>0  °
map! <C-v>ce ¢
map! <C-v>*  •
map! <C-v>co ⌘
" }}}
" Java {{{
" Runs javac on the current file
map <leader>jc :!javac %<CR> 
" Runs the current java file
map <leader>jj :!java %:r<CR>
" }}}
" # vim:ts=4:sw=4:ai:foldmethod=marker:foldlevel=0:
