return {
  'tpope/vim-fugitive',
  keys = {
    {
      '<leader>gs',
      function()
        vim.cmd ':Git'
      end,
      desc = 'git status',
    },
    {
      '<leader>gc',
      function()
        vim.cmd ':Git commit'
      end,
      desc = 'git commit',
    },
    {
      '<leader>gP',
      function()
        vim.cmd ':Git push'
      end,
      desc = 'git push',
    },
    {
      '<leader>gp',
      function()
        vim.cmd ':Git pull'
      end,
      desc = 'git pull',
    },
    {
      '<leader>gb',
      function()
        vim.cmd ':Git blame'
      end,
      desc = 'git blame',
    },
    {
      '<leader>gd',
      function()
        vim.cmd ':Gvdiffsplit!'
      end,
      desc = 'git diff',
    },
    {
      '<leader>f',
      function()
        vim.cmd ':diffget //2'
      end,
      desc = 'git get left',
    },
    {
      '<leader>j',
      function()
        vim.cmd ':diffget //3'
      end,
      desc = 'git diff right',
    },
  },
}
