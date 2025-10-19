-- File: ~/.config/nvim/lua/plugins/jupyter.lua
-- A minimal config to allow for a manual build.
return {
  {
    "kiyoon/jupynium.nvim",
    build = "pip install --user .",
    keys = {
      -- --- Cell Execution ---
      { "<leader>jx", "<cmd>JupyniumExecuteCell<CR>", mode = { "n", "v" }, desc = "Jupyter: Execute Cell" },
      { "<leader>jX", "<cmd>JupyniumExecuteCellAndNext<CR>", mode = "n", desc = "Jupyter: Execute Cell & Select Next" },

      -- --- Cell Manipulation ---
      { "<leader>ja", "<cmd>JupyniumCellTextAbove<CR>", mode = "n", desc = "Jupyter: Add Cell Above" },
      { "<leader>jb", "<cmd>JupyniumCellTextBelow<CR>", mode = "n", desc = "Jupyter: Add Cell Below" },
      { "<leader>jd", "<cmd>JupyniumDeleteCell<CR>", mode = "n", desc = "Jupyter: Delete Cell" },

      -- --- Cell Navigation ---
      { "<leader>jJ", "<cmd>JupyniumNextCell<CR>", mode = "n", desc = "Jupyter: Go to Next Cell" },
      { "<leader>jK", "<cmd>JupyniumPrevCell<CR>", mode = "n", desc = "Jupyter: Go to Prev Cell" },

      -- --- Output Management ---
      { "<leader>jl", "<cmd>JupyniumClearOutput<CR>", mode = { "n", "v" }, desc = "Jupyter: Clear Output" },
      { "<leader>jL", "<cmd>JupyniumClearAllOutputs<CR>", mode = "n", desc = "Jupyter: Clear All Outputs" },

      -- --- Kernel Management ---
      { "<leader>jr", "<cmd>JupyniumRestartKernel<CR>", mode = "n", desc = "Jupyter: Restart Kernel" },
    },
  },
}
