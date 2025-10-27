return {
  { -- The main table for the molten-nvim plugin
    "benlubas/molten-nvim",
    build = ":UpdateRemotePlugins",
    lazy = false, -- Or true/ft = "python" etc.

    -- Move the keys table INSIDE the plugin's table
    keys = {
      {
        "<leader>jni",
        "<cmd>MoltenInit<cr>",
        desc = "[J]upyter [N]eovim [I]nitialize Kernel",
      },
      {
        "<leader>jnx",
        "<cmd>MoltenEvaluateLine<cr>",
        desc = "[J]upyter [N]eovim E[x]ecute Line", -- Corrected description
      },
      {
        "<leader>jx",
        "<cmd>MoltenEvaluateVisual<cr>",
        desc = "[J]upyter [N]eovim E[x]ecute Cell", -- Corrected description
      },


      -- Add other molten keymaps here if desired
    },

    -- Optional init/config functions also go inside
    init = function()
      -- vim.g.python3_host_prog = '/path/to/your/python3'
    end,
    config = function()
      -- require('molten').setup({})
    end,
  },
  -- If you had other plugins defined here, they would follow
  -- { "another/plugin", ... },
}
