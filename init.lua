-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("plugins.completion")
vim.keymap.set("n", "<leader>ls", ":split | terminal live-server --host=localhost --open<CR>", { silent = true })
require("tiny-inline-diagnostic").setup({
  signs = {
    left = "", -- Left border character
    right = "", -- Right border character
    diag = "●", -- Diagnostic indicator character
    arrow = "    ", -- Arrow pointing to diagnostic
    up_arrow = "    ", -- Upward arrow for multiline
    vertical = " │", -- Vertical line for multiline
    vertical_end = " └", -- End of vertical line for multiline
  },
  blend = {
    factor = 0.22, -- Transparency factor (0.0 = transparent, 1.0 = opaque)
  },
})
