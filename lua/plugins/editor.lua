return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults = opts.defaults or {}
      opts.defaults.file_ignore_patterns = { "node_modules", "%.png", "%.jpg", "%.jpeg", "%.gif" }
    end,
  },
  {
    "echasnovski/mini.bracketed",
    version = false,
  },
  {
    "github/copilot.vim",
    config = function()
      vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Accept('<CR>')", { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<Tab>", "copilot#Accept('<Tab>')", { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-e>", "copilot#Dismiss()", { silent = true, expr = true })
    end,
  },
}
