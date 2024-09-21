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
keymap.set('n', '<A-l>', ':BufferLineCycleNext<CR>', { desc = "Go to next buffer" })
keymap.set('n', '<A-h>', ':BufferLineCyclePrev<CR>', { desc = "Go to previous buffer" })
keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>', { desc = "Close other buffer" })
