call plug#begin()

Plug 'glepnir/zephyr-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set number
set shiftwidth=4
set tabstop=4
set nowrap

lua require('treesitter')
lua require('zephyr')
