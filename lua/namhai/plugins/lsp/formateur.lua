return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        ["*"] = {
          "trim_whitespace",
          "trim_newlines",
        },
        javascript = { "biome" },
        typescript = { "biome" },
        javascriptreact = { "biome" },
        typescriptreact = { "biome" },
        json = { "biome" },
        lua = { "stylua" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })


    vim.keymap.set({ "n" }, "<leader>fp", "ma<S-g><S-v>ggVG=`a")
  end,
}
