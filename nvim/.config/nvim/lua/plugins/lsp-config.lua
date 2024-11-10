return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "angularls",
                    "cssls",
                    "gopls",
                    "tsserver",
                    "ltex",
                    "markdown_oxide",
                    "pyre",
                    "sqlls",
                    "svelte",
                    "taplo",
                    "tailwindcss",
                    "hydra_lsp",
                    "rust_analyzer",
                    "jdtls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})

            lspconfig.lua_ls.setup({
              capabilities = capabilities
            })
            lspconfig.gopls.setup({
              capabilities = capabilities
            })
            lspconfig.angularls.setup({
              capabilities = capabilities
            })
            lspconfig.cssls.setup({
              capabilities = capabilities
            })
            lspconfig.tsserver.setup({
              capabilities = capabilities
            })
            lspconfig.ltex.setup({
              capabilities = capabilities
            })
            lspconfig.markdown_oxide.setup({
              capabilities = capabilities
            })
            lspconfig.pyre.setup({
              capabilities = capabilities
            })
            lspconfig.sqlls.setup({
              capabilities = capabilities
            })
            lspconfig.svelte.setup({
              capabilities = capabilities
            })
            lspconfig.taplo.setup({
              capabilities = capabilities
            })
            lspconfig.tailwindcss.setup({
              capabilities = capabilities
            })
            lspconfig.hydra_lsp.setup({
              capabilities = capabilities
            })
            lspconfig.rust_analyzer.setup({
              capabilities = capabilities
            })
            lspconfig.jdtls.setup({
              capabilities = capabilities
            })
        end
    },
    {
      'nvim-telescope/telescope-ui-select.nvim',
      config = function()
        require("telescope").setup ({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        })
        require("telescope").load_extension("ui-select")
      end
    },
}
