return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        json = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        yaml = { "prettier" },
      },
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    })

    vim.keymap.set(
      { "n", "v" },
      "<leader>mf",
      function()
        conform.format({
          lsp_format = "fallback",
          timeout_ms = 500,
        })
      end,
      { desc = "Format file or range (in visual mode)" }
    )
  end,
}
