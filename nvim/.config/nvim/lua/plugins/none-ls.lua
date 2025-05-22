return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("null-ls")setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.completion.spell,
          require("none-ls.diagnostics.eslint"),
        },
      })
    end,
  },
}
