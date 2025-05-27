-- Everforest
-- return {
--   'sainnhe/everforest',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.everforest_background = 'hard'
--     vim.g.everforest_better_performance = 1
--     vim.g.everforest_transparent_background = 2
--     vim.cmd.colorscheme 'everforest'
--   end,
-- }

-- Gruvbox
-- return {
--   'sainnhe/gruvbox-material',
--   priority = 1000,
--   lazy = false,
--   config = function()
--     -- Check if termguicolors is supported and enable it
--     if vim.fn.has 'termguicolors' == 1 then
--       vim.opt.termguicolors = true
--     end
--
--     -- Set the background (choose either 'dark' or 'light' according to your preference)
--     vim.opt.background = 'dark' -- or 'light'
--
--     -- Set gruvbox-material specific options
--     vim.g.gruvbox_material_background = 'hard'
--     vim.g.gruvbox_material_better_performance = 1
--     vim.g.gruvbox_material_colors_override = {
--       bg0 = { '#00000000', '234' }, -- black background
--       bg2 = { '#282828', '235' }, -- cursor line
--     }
--     -- Apply the colorscheme
--     vim.cmd.colorscheme 'gruvbox-material'
--   end,
-- }

-- Base 16 Black Metal
return {
  'metalelf0/base16-black-metal-scheme',
  config = function()
    vim.cmd 'colorscheme base16-black-metal-gorgoroth'
    for _, grp in ipairs {
      'LineNr',
      'CursorLineNr',
      'SignColumn',
      'FoldColumn',
      'VertSplit',
    } do
      vim.api.nvim_set_hl(0, grp, { bg = 'NONE' })
    end
  end,
}
