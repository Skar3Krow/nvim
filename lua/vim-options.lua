vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.list = true
-- vim.opt.listchars:append("space:·")
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("trail:·")
-- vim.opt.listchars:append("tab:▏ ")
-- vim.opt.listchars:append("nbsp:␣")

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = { current_line = true },
  float = {
    border = "rounded",
  },
  underline = true,
  update_in_insert = false,
})

vim.opt.swapfile = false
vim.opt.fillchars = { eob = " " }

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
vim.wo.relativenumber = true

-- Auto-format on save

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format({async = false})]])
