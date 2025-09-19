return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
  config = function()
    -- This sets up Mason for package management
    require("mason").setup({})

    -- This sets up the bridge between Mason and lspconfig
    -- It ensures that any language servers you've installed via Mason
    -- will be automatically configured by the "default handler" below.
    require("mason-lspconfig").setup({
      -- This tells mason-lspconfig to automatically install servers
      -- that have a handler defined below, if they aren't already installed.
      automatic_installation = true,

      -- We will use the setup_handlers function to configure all LSPs.
      -- The `ensure_installed` option from your original code is now
      -- redundant because the `automatic_installation` option
      -- handles this more generally.

      -- NOTE: In older versions of mason-lspconfig, you would use
      -- `setup_handlers` as a function call. With newer versions,
      -- you can pass a `handlers` table directly to the `setup` call.
      -- For a more robust setup that works with both, you can use a
      -- conditional check. However, the `setup` with a `handlers` key
      -- is the modern, recommended approach.

      handlers = {
        -- This is the "default handler". It will be called for every
        -- server installed by Mason that doesn't have a specific handler
        -- function defined below.
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,

        -- You can still add specific configurations for individual servers
        -- like 'pylsp' if you need custom settings. For example:
        ["pylsp"] = function()
          require("lspconfig").pylsp.setup({
            settings = {
              pylsp = {
                plugins = {
                  -- Example: enable the pycodestyle linter
                  pycodestyle = { enabled = true },
                },
              },
            },
          })
        end,
      },
    })

    -- Your previous manual lspconfig.pylsp.setup({}) is now unnecessary
    -- because the `setup_handlers` function handles it.
  end,
}
