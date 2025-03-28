return {
  {
    "Saghen/blink.nvim", -- Correct repository
    dependencies = { "L3MON4D3/LuaSnip" }, -- Ensure LuaSnip loads first
    opts = {
      snippet_engine = "luasnip", -- Use LuaSnip for snippets
      mapping = {
        ["<Tab>"] = "expand_or_jump",
        ["<S-Tab>"] = "jump_back",
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" }, -- Load friendly-snippets
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load() -- Auto-load snippets
      require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets/" } }) -- Load custom snippets
    end,
  },
}
