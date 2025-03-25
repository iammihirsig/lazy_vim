-- Ensure true colors are enabled in Neovim
vim.opt.termguicolors = true

return {
  -- Plugin for highlighting colors
  "brenoprata10/nvim-highlight-colors",
  config = function()
    -- Initialize the nvim-highlight-colors plugin
    require("nvim-highlight-colors").setup({
      render = "background", -- or 'foreground'
      enable_named_colors = true, -- Highlight named colors (e.g., 'red', 'green')
      enable_tailwind = true, -- Enable support for Tailwind CSS color classes
      enable_hex = true, -- Highlight hex colors (e.g., '#FFFFFF')
      enable_short_hex = true, -- Highlight short hex colors (e.g., '#FFF')
      enable_rgb = true, -- Highlight RGB colors (e.g., 'rgb(255, 255, 255)')
      enable_hsl = true, -- Highlight HSL colors (e.g., 'hsl(120, 100%, 50%)')
      enable_var_usage = true, -- Highlight CSS variables (e.g., 'var(--color)')
      custom_colors = {
        { label = "%-%-theme%-primary%-color", color = "#0f1219" },
        { label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
      },
      exclude_filetypes = {}, -- Optionally exclude specific filetypes
      exclude_buftypes = {}, -- Optionally exclude specific buffer types
    })

    -- Add Blink-specific formatting setup if required
    -- NOTE: If Blink has any color-related integration, you can customize that here.
  end,
}
