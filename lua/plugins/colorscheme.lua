return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- Default options:
    require("gruvbox").setup({
      transparent_mode = true,
    })
    vim.cmd("colorscheme gruvbox")
  end,
  opts = ...,
}
