return {
  "lervag/vimtex",
  lazy = false,     -- We want it to load immediately for TeX files
  init = function()
    vim.g.vimtex_view_method = 'general' -- Uses default system PDF viewer
    vim.g.vimtex_compiler_method = 'latexmk'
  end
}
