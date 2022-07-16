:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:tnoremap <Esc> <C-\><C-n>
:set termguicolors
:set shell=zsh\ -l
:set guicursor=a:blinkon100
:set clipboard+=unnamedplus
:set swapfile
:set dir=~/tmp

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox' 
Plug 'neovim/nvim-lspconfig'
Plug 'feline-nvim/feline.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'pantharshit00/vim-prisma'

"	for jeste testing
Plug 'vim-test/vim-test'

Plug 'nvim-lua/plenary.nvim'
"	git diff
Plug 'sindrets/diffview.nvim'

" cmp plug ins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'

" snippets
Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'

call plug#end()


colorscheme gruvbox
set background=dark
let mapleader = "\<space>"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D

" require plugin config
lua require('rghuynh')

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K <cmd> lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi <cmd> lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gD <cmd> lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd> lua vim.lsp.buf.references()<CR>
nnoremap <silent> <C-k> <cmd> lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd> lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-n> <cmd> lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>i <cmd> lua vim.lsp.buf.code_action()<CR> 
inoremap <silent><expr> <C-Space> <cmd> vim.lsp.buf.completion()<CR>
nnoremap <leader>e :EslintFixAll<CR>

let NERDTreeShowHidden=1
