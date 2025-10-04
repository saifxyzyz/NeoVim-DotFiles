-- ~/.config/nvim/lua/config/autocmds.lua

local api = vim.api

-- Create an augroup to hold our autocmds.
-- This is a best practice to prevent autocmds from being duplicated.
local custom_filetypes_group = api.nvim_create_augroup("CustomFiletypes", { clear = true })

-- Define the mappings
local filetype_mappings = {
  -- { pattern = "*.extension", filetype = "the-filetype" }
  { pattern = "*.htmx", filetype = "html" },
  { pattern = "*.mdx", filetype = "markdown" },
  { pattern = "*.tfvars", filetype = "terraform" },
  -- Add any other custom filetypes you need here
  { pattern = "*.tsx", filetype = "typescript" },
  { pattern = "*.jsx", filetype = "javascript" },
  { pattern = "*.py", filetype = "python" },

  { pattern = "*.css", filetype = "css" },
}

-- Create an autocmd for each mapping
for _, mapping in ipairs(filetype_mappings) do
  api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    group = custom_filetypes_group,
    pattern = mapping.pattern,
    callback = function()
      vim.bo.filetype = mapping.filetype
    end,
  })
end
