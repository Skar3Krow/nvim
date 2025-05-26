return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "akinsho/bufferline.nvim",
  },
  config = function()
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
      vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }),
      vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" }),
      vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" }),
    })
  end,
}
