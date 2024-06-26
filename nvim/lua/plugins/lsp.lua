return {
    {
        "williamboman/mason.nvim", name = "mason",
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim", name = "mason-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "bashls", "clangd", "lua_ls", "vimls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").bashls.setup({})
            require("lspconfig").clangd.setup({})
            require("lspconfig").lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global.
                            globals = {
                                "vim",
                                "require"
                            }
                        }
                    }
                }
            })
        end,
    }
}
