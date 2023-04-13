syntax on 
set termguicolors
set number
set ruler 
set hlsearch
set nocompatible
set t_Co=256

highlight Comment ctermfg=LightMagenta

set ai 
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set nobackup
set noswapfile
set nowritebackup
set noundofile

set mouse=r
set nowrap
set belloff=all
set laststatus=2
set clipboard=unnamed
"set noshowmode

" bracket completion 
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" vim-plug
call plug#begin()

Plug 'rbong/vim-crystalline'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }

call plug#end()

colorscheme purify

" tokyonight 
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

" crystalline
function! StatusLine(...)
  return '%#Crystalline# %f%h%w%m%r %#CrystallineFill#'
        \ . '%=%#Crystalline# %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
endfunction
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'dracula'

filetype plugin on
" annoying python thing
autocmd FileType python setlocal shiftwidth=2 softtabstop=2

