return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
                diagnosticMode = "off",
              },
            },
          },
        },
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
    },

    -- opts = function(_, opts)
    --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
    --   keys[#keys + 1] = { "gd", vim.lsp.buf.definition }
    --   opts.keys = keys
    --
    --   opts.servers = opts.servers or {}
    --   opts.servers.pyright = {
    --     settings = {
    --       python = {
    --         analysis = {
    --           typeCheckingMode = "off",
    --           diagnosticMode = "off",
    --         },
    --       },
    --     },
    --   }
    -- end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "pyright",
        "css-lsp",
        "djlint",
        "html-lsp",
        "emmet-ls",
        "jinja-lsp",
        "isort",
        "typescript-language-server",
      })
    end,
  },
}
