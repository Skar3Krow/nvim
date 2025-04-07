return {
  "shoukoo/commentary.nvim",
  config = function()
    require("commentary").setup({
      languages = {
        go = { single_line_comment = "//", multiline_comment = { "/*", "*/" }, prefer_multiline = true },
        typescript = { single_line_comment = "//", multiline_comment = { "/**", "*/" }, prefer_mutiline = true },
        rust = { single_line_comment = "//", multiline_comment = { "/*", "*/" }, prefer_multiline = true },
      },
    })
  end,
}
