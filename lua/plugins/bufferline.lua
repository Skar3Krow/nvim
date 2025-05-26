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
        custom_areas = {
          right = function()
            local result = {}
            local seve = vim.diagnostic.severity
            local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
            local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
            local info = #vim.diagnostic.get(0, { severity = seve.INFO })
            local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

            if error ~= 0 then
              table.insert(result, { text = "  " .. error, link = "DiagnosticError" })
            end

            if warning ~= 0 then
              table.insert(result, { text = "  " .. warning, link = "DiagnosticWarn" })
            end

            if hint ~= 0 then
              table.insert(result, { text = "  " .. hint, link = "DiagnosticHint" })
            end

            if info ~= 0 then
              table.insert(result, { text = "  " .. info, link = "DiagnosticInfo" })
            end
            return result
          end,
        },
      },
      vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }),
      vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" }),
      vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" }),
    })
  end,
}
