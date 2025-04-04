return {
  "nvimdev/indentmini.nvim",
  config = function()
    vim.cmd.highlight("IndentLineCurrent guifg=#E97451")
    require("indentmini").setup() -- use default config
  end,
}
