-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Reverse 'j' and 'k' mappings
-- keymap.set({ "n", "x" }, "j", "k", { desc = "Up", silent = true })
-- keymap.set({ "n", "x" }, "k", "j", { desc = "Down", silent = true })
-- keymap.set({ "n", "x" }, "<Up>", "j", { desc = "Down", silent = true })
-- keymap.set({ "n", "x" }, "<Down>", "k", { desc = "Up", silent = true })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Move Lines
-- keymap.set("n", "<A-k>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
-- keymap.set("n", "<A-j>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
-- keymap.set("i", "<A-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- keymap.set("i", "<A-j>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- keymap.set("v", "<A-k>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
-- keymap.set("v", "<A-j>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- keymap.set("n", "w", "b")

keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Swap <C-k> and <C-j> for window navigation
-- keymap.set("n", "<C-k>", "<C-w>j", { silent = true, noremap = true })
-- keymap.set("n", "<C-j>", "<C-w>k", { silent = true, noremap = true })

-- Replace go to definition
keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })

keymap.set("n", "0", "^", { noremap = true, silent = true })
