set shell=bash
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
filetype plugin on
filetype plugin indent on
set t_Co=256
set backspace=indent,eol,start
set number

" set the runtime path to include Vundle and initialize
call plug#begin()

" Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plug 'VundleVim/Vundle.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
Plug 'rodjek/vim-puppet'
Plug 'godlygeek/tabular'
Plug 'vim-jp/vim-go-extra'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ginsburgnm/rich.nvim'
Plug 'fatih/vim-go'

call plug#end()
let g:go_fmt_command = "gofmt"

let g:rich_path = "~/venv/bin/rich"
let g:rich_border = "rounded"

nnoremap ff :Telescope find_files<cr>
nnoremap fg :Telescope live_grep<cr>
nnoremap fb :Telescope buffers<cr>
nnoremap fh :Telescope help_tags<cr>


if (has("termguicolors"))
	 set termguicolors
endif

 " Theme
colorscheme OceanicNext
syntax enable
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
