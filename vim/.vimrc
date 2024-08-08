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
"Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rodjek/vim-puppet'
Plug 'godlygeek/tabular'
Plug 'vim-jp/vim-go-extra'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ginsburgnm/rich.nvim'
Plug 'fatih/vim-go'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
nnoremap <C-o> :NvimTreeToggle<cr>

lua << END
require'nvim-web-devicons'.setup {
	default = true;
};

--local custom_nord = require'lualine.themes.nord'

-- Change the background of lualine_c section for normal mode
require('lualine').setup{
	options = { 
		theme = custom_nord, 
		section_separators = '', 
		component_separators = '' 
	},
	sections = {
    		lualine_a = {'mode'},
    		lualine_b = {'branch', 'diff', 'diagnostics'},
    		lualine_c = {'filename'},
    		lualine_x = {'encoding'},
    		lualine_y = {'progress'},
    		lualine_z = {'location'}
  	},
}

require'nvim-tree'.setup {
	renderer = {
    		indent_markers = {
    		  enable = false,
    		  icons = {
    		    corner = "└ ",
    		    edge = "│ ",
    		    none = "  ",
    		  },
    		},
    		icons = {
    		  webdev_colors = false,
    		  git_placement = "before",
    		},
  	},
}

require("bufferline").setup{
	options = {
		close_command = "bdelete! %d",       
   		right_mouse_command = "bdelete! %d",
    		left_mouse_command = "buffer %d",  
    		middle_mouse_command = nil,       
    		indicator_icon = '▎',
    		buffer_close_icon = 'X',
    		modified_icon = '●',
    		close_icon = 'X',
    		left_trunc_marker = '▎',
    		buffer_close_icon = 'X',
    		right_trunc_marker = '▎',
		diagnostics = false,
		show_buffer_icons = false,
		offsets = {
		  {
		    filetype = "NvimTree",
		    text = function()
			   	return vim.fn.getcwd()
			   end,
		    highlight = "Directory",
		    text_align = "left"
		  }
		}
	}
}
END

let g:go_fmt_command = "gofmt"

let g:rich_path = "~/venv/bin/rich"
let g:rich_border = "rounded"

nnoremap ff :Telescope find_files<cr>
nnoremap fg :Telescope live_grep<cr>
nnoremap fb :Telescope buffers<cr>
nnoremap fh :Telescope help_tags<cr>
nnoremap <C-x> :BufferLinePickClose<cr>
nnoremap <C-n> :BufferLineCycleNext<cr>
nnoremap <C-p> :BufferLineCyclePrev<cr>


if (has("termguicolors"))
	 set termguicolors
endif

 " Theme
"set background=dark
"colorscheme gruvbox
colorscheme catppuccin-mocha "catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

syntax enable
"#hi Normal guibg=NONE ctermbg=NONE
"#hi LineNr guibg=NONE ctermbg=NONE
"#hi SignColumn guibg=NONE ctermbg=NONE
"#hi EndOfBuffer guibg=NONE ctermbg=NONE
