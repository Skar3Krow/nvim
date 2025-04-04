return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "akinsho/bufferline.nvim",
  },
  config = function()
    require("bufferline").setup({})
  end,
}
