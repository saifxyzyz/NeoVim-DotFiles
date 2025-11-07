return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        -- configuration goes here
    },
    keys = {
      {
        "<leader>lc",
        "<cmd>Leet<cr>",
        desc = "Open Leetcode", -- Corrected description
      },
  }

}
