return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  keys = {
    {
      "<leader>rdp",
      "<cmd>MarkdownPreview<cr>",
      desc = "start markdown preview", -- Corrected description
    },
    {
      "<leader>rdx",
      "<cmd>MarkdownPreviewStop<cr>",
      desc = "stop markdown preview", -- Corrected description
    },

  }
}
