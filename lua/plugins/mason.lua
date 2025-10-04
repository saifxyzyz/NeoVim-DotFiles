return {
  -- The new, correct repository path for Mason
  "mason-org/mason.nvim",
  dependencies = {
    -- The new, correct repository path for mason-lspconfig
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    -- Setup mason.nvim
    require("mason").setup()

    local mason_lspconfig = require("mason-lspconfig")

    -- List of servers to install
    local servers = {
      -- Lua
      "lua_ls",
      -- Python
      "pyright",
      -- "ruff",
      -- "basedpyright",
      -- Web Dev
      "html",
      "cssls",
      "tailwindcss",
      "eslint",
      "prismals",
      -- TypeScript / JS
      "ts_ls",
      -- Shell & Other
      "taplo", -- for TOML
    }

    -- Tell mason-lspconfig to ensure these servers are installed
    mason_lspconfig.setup({
      ensure_installed = servers,
    })
  end,
}
