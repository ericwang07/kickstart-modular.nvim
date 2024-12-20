return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup {
        min_window_height = 1, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
