set number
set relativenumber
set background=dark
set laststatus=0
set tabstop=4
		
"Key map
inoremap jk <Esc>
inoremap kj <Esc>

"Plugin
call plug#begin()
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
	Plug 'scrooloose/nerdtree' 
	Plug 'jiangmiao/auto-pairs'	
	Plug 'alvan/vim-closetag'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'morhetz/gruvbox'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/popup.nvim'
call plug#end()

"Plugin setting
"Theme
syntax enable
colorscheme dracula 
"NerdTree
map <C-b> :NERDTreeToggle<CR> 
map <C-i> :NERDTreeFind<CR> 
lua << EOF
		require'lspconfig'.clangd.setup{}
		require'lspconfig'.pyright.setup{}
EOF

