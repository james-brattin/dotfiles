return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("none-ls.nvim")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
