vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- insert
keymap.set('i', 'jj', '<Esc>', { desc = "Exit insert mode with jj" })

-- buffers
keymap.set('n', '<leader>w', ':w<CR>', { desc = "Write buffer" })

-- splits
keymap.set('n', '|', ':vsplit<CR>', { desc = "Split window vertically" })
keymap.set('n', '\\', ':split<CR>', { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left reveal toggle<CR>', { desc = "Toggle file explorer" })

-- tabs
keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = "Go to next buffer" })
keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>', { desc = "Go to previous buffer" })
keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>', { desc = "Close other buffer" })
keymap.set('n', '<leader>br', ':BufferLineCloseRight<CR>', { desc = "Close right buffer" })
keymap.set('n', '<leader>bx', ':BufferLinePickClose<CR>')

-- eslint auto fix
keymap.set('n', '<leader>l', ':%!eslint_d --stdin --fix-to-stdout --stdin-filename %<CR>',
	{ noremap = true, silent = true, desc = "eslint auto fix" })
keymap.set('v', '<leader>l', ':!eslint_d --stdin --fix-to-stdout<CR>',
	{ noremap = true, silent = true, desc = "eslint auto fix" })
