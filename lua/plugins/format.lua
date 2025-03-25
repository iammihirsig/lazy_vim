return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        javascript = { "prettier" },
        html = { "prettier" },
        python = { "black" },
        cpp = { "clang-format" },
      },
    },
  },
}
