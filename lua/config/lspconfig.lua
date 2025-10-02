vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  update_in_insert = false,
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "", -- Error icon
      [vim.diagnostic.severity.WARN] = "",  -- Warning icon
      [vim.diagnostic.severity.HINT] = "",  -- Hint icon
      [vim.diagnostic.severity.INFO] = "",  -- Info icon
    },
  },
})

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Update the path here as well
    "mason-org/mason.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(client, bufnr)
      -- Your on_attach keymaps here...
      local opts = { buffer = bufnr, noremap = true, silent = true }
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    local servers = require("mason-lspconfig").get_installed_servers()
    for _, server_name in ipairs(servers) do
      local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      if server_name == "lua_ls" then
        opts.settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false },
          },
        }
      elseif server_name == "basedpyright" then
        opts.settings = {
          basedpyright = { disableOrganizeImports = true },
        }
      end

      lspconfig[server_name].setup(opts)
    end
  end,
}
