return {
  "CRAG666/code_runner.nvim",
  config = function()
    -- Set up the code_runner plugin
    require("code_runner").setup({
      mode = "float",
      filetype = {
        python = "python3 -u",
        c = {
          'cd "$dir" && gcc "$fileName" -o /tmp/"$fileNameWithoutExt" && /tmp/"$fileNameWithoutExt" && rm /tmp/"$fileNameWithoutExt"',
        },
        cpp = {
          'cd "$dir" && g++ "$fileName" -o /tmp/"$fileNameWithoutExt" && /tmp/"$fileNameWithoutExt" && rm /tmp/"$fileNameWithoutExt"',
        },
      },
      float = {
        border = "rounded", -- Rounded border style
      },
    })
  end,
}
