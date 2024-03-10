-- return {
--   'rebelot/kanagawa.nvim',
--   priority = 1000,
--   lazy = false,
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = 'transparent',
--       floats = 'transparent',
--     },
--   },
--   config = function()
--     vim.cmd.colorscheme 'kanagawa-dragon'
--   end,
-- }
--
return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  lazy = false,
  opts = {
    transparent = true,
    styles = {
      sidebars = 'transparent',
      floats = 'transparent',
    },
  },
  config = function()
    -- Check if termguicolors is supported and enable it
    if vim.fn.has 'termguicolors' == 1 then
      vim.opt.termguicolors = true
    end

    -- Set the background (choose either 'dark' or 'light' according to your preference)
    vim.opt.background = 'dark' -- or 'light'

    -- Set gruvbox-material specific options
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_better_performance = 1

    -- Apply the colorscheme
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
