return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "float",
      filetype = {
        python = "python3 -u",
        c = {
          'cd "$dir" && gcc "$fileName" -o /tmp/"$fileNameWithoutExt" && /tmp/"$fileNameWithoutExt"; [ -f /tmp/"$fileNameWithoutExt" ] && rm /tmp/"$fileNameWithoutExt"',
        },
        cpp = {
          'cd "$dir" && g++ "$fileName" -o /tmp/"$fileNameWithoutExt" && /tmp/"$fileNameWithoutExt"; [ -f /tmp/"$fileNameWithoutExt" ] && rm /tmp/"$fileNameWithoutExt"',
        },
        js = "node $fileName",
      },
      float = {
        border = "rounded",
      },
    })
  end,
}
