set number
set relativenumber
set background=dark
set laststatus=0

"Key map
inoremap jk <Esc>
inoremap kj <Esc>

"Plugin
call plug#begin()
	Plug 'scrooloose/nerdtree' 
	Plug 'jiangmiao/auto-pairs'	
	Plug 'alvan/vim-closetag'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Plugin setting
"Theme
syntax enable
colorscheme gruvbox 
"NerdTree
map <C-b> :NERDTreeToggle<CR> 
map <C-i> :NERDTreeFind<CR> 
