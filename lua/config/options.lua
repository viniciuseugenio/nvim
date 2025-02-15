-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.o.scroll = 10
vim.o.termguicolors = true

-- vim.o.guicursor = "n-v-c:block,i:block"

vim.o.clipboard = "unnamedplus"

vim.g.snacks_animate = false

vim.api.nvim_set_hl(0, "lualine_b_insert", { bg = "NONE" })
