return {
    "stevearc/conform.nvim",
    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                javascript = { { "prettierd", "prettier" } },
                typescript = { { "prettierd", "prettier" } },
                css = { { "prettierd", "prettier" } },
                html = { { "prettierd", "prettier" } },
                json = { { "prettierd", "prettier" } },
                yaml = { { "prettierd", "prettier" } },
                markdown = { { "prettierd", "prettier" } },
                rust = { "rustfmt" },
                go = { "gofmt" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            notify_on_error = true,
            log_level = vim.log.levels.ERROR,
        })

        -- Optional: Set up keymaps for formatting
        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
