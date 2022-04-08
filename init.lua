vim.opt.shell = "bash"
vim.compatible = true
vim.opt.number = true
vim.opt.filetype = "off"
vim.opt.syntax = "on"

vim.cmd([[
filetype plugin on
filetype plugin indent on
set t_Co=256
set backspace=indent,eol,start

call plug#begin()

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
Plug 'toppair/reach.nvim'
call plug#end()
let g:go_fmt_command = "gofmt"

let g:rich_path = "~/venv/bin/rich"
let g:rich_border = "rounded"

if (has("termguicolors"))
	 set termguicolors
endif

colorscheme OceanicNext
syntax enable
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]])


require('reach').setup({
	notifications = true
})

vim.api.nvim_set_keymap("n", "ft", ":ReachOpen buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "ff", ":Telescope find_files<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "fg", ":Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "fb", ":Telescope buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "fh", ":Telescope help_tags<cr>", { noremap = true })
