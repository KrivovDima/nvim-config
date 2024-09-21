vim.cmd("let g:netrw_liststyle = 3") -- change display Explore

local opt = vim.opt
local api = vim.api

opt.relativenumber = true
opt.number = true

-- clipboard
opt.clipboard = "unnamedplus"

-- mouse
opt.mouse = "a"
opt.mousefocus = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- indent
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- other
opt.scrolloff = 8
opt.wrap = false
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- auto save
api.nvim_create_augroup("AutoSaveOnSwitch", { clear = true })
api.nvim_create_autocmd("BufLeave", {
	group = "AutoSaveOnSwitch",
	pattern = "*",
	command = "silent! :wa",
})


