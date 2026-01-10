return {
  "nvim-java/nvim-java",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  -- "config" runs when the plugin loads
  config = function()
    -- 1. Setup nvim-java FIRST
    require("java").setup()
    
    -- 2. Setup lspconfig AFTER
    require("lspconfig").jdtls.setup({})
  end,
}
