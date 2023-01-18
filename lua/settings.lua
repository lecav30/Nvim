local o = vim.o
local opt = vim.opt
local cmd = vim.cmd

-- Enable syntax highlighting and filetype plugins
-- vim.cmd 'syntax enable'
-- vim.cmd 'filetype plugin on'
cmd("syntax enable")
cmd("filetype plugin on")

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Buffer options
o.autoindent = true
o.expandtab = true
o.smartindent = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

-- Global options
o.cursorline = true
o.exrc = true
o.hidden = true
o.ignorecase = true
o.laststatus = 2
o.mouse = "a"
o.nrformats = ""
o.path = ".,,"
o.showmode = false
o.showtabline = 1
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.swapfile = true
o.updatetime = 2000
o.clipboard = "unnamedplus"
o.showmatch = true
o.ruler = true
o.showcmd = true
o.encoding = "utf-8"

-- Window options
o.foldmethod = "manual" -- indentation folds
o.relativenumber = true
o.number = true
o.signcolumn = "yes" -- make sure this is on for gitsigns.nvim, otherwise the signcolumn changes size constantly
o.wrap = true -- text autofit in a line

-- colorscheme global defaults
o.termguicolors = true

-- Themes and configs
-- cmd("colorscheme material")
-- cmd("colorscheme moonfly")
-- cmd("colorscheme catppuccin-mocha")
-- cmd("colorscheme themer_uwu")
o.background = "dark"
cmd("colorscheme NeoSolarized")
vim.g.neosolarized_contrast = "low"

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"
