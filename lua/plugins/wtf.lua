return {
  "saifxyzyz/wtf.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
  },
  -- keep opts empty i.e. opts{}, or change 'gemini' to the ai api that you would like to use here
  opts = {
    provider = "gemini",
    providers = {
      ollama = {
        api_key = "notrelevant?",
        url = "http://localhost:11434/v1/chat/completions",
        model_id = "gemma3:270m",
      },
      gemini = {
        model_id = "gemini-2.0-flash",
      },
    },
  },
  keys = {
    {
      "<leader>wf",
      mode = { "n", "x" },
      function()
        require("wtf").fix()
      end,
      desc = "Fix diagnostic with AI",
    },
    {
      "<leader>wd",
      mode = { "n", "x" },
      function()
        require("wtf").diagnose()
      end,
      desc = "Debug diagnostic with AI",
    },
    {
      mode = { "n" },
      "<leader>ws",
      function()
        require("wtf").search()
      end,
      desc = "Search diagnostic with Google",
    },
    {
      mode = { "n" },
      "<leader>wp",
      function()
        require("wtf").pick_provider()
      end,
      desc = "Pick provider",
    },
    {
      mode = { "n" },
      "<leader>wh",
      function()
        require("wtf").history()
      end,
      desc = "Populate the quickfix list with previous chat history",
    },
    {
      mode = { "n" },
      "<leader>wg",
      function()
        require("wtf").grep_history()
      end,
      desc = "Grep previous chat history with Telescope",
    },
    {
      mode = { "n" },
      "<leader>wc",
      function()
        require("wtf").copy()
      end,
      desc = "Copy the diagnostic",
    },
  },
}
