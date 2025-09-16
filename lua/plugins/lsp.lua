return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
  config = function()
    -- This sets up Mason and ensures pylsp is installed
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = { "pylsp" },
      automatic_installation = true,
    })

    -- This tells nvim-lspconfig to use the configuration for pylsp
    local lspconfig = require("lspconfig")
    lspconfig.pylsp.setup({})
  end,
}
