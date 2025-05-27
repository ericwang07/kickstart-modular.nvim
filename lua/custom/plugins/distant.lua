return {
  'chipsenkbeil/distant.nvim',
  branch = 'v0.3',
  config = function()
    require('distant'):setup {
      ['ew579@hawk.zoo.cs.yale.edu'] = {
        launch = {
          distant = '/home/accts/ew579/.local/bin/distant',
        },
      },
      ['cpsc477_ew579@grace.ycrc.yale.edu'] = {
        launch = {
          distant = '~/.local/bin/distant',
        },
      },
      servers = {
        ['*'] = {
          lsp = {
            ['cs323-hw5'] = {
              cmd = { '/home/accts/ew579/.local/bin/clangd' },
              file_types = { 'c' },
              root_dir = '/home/accts/ew579/cs323/cs323-hw5',
              on_exit = function(code, signal, client_id)
                local prefix = '[Client ' .. tostring(client_id) .. ']'
                print(prefix .. ' LSP exited with code ' .. tostring(code))

                -- Signal can be nil
                if signal ~= nil then
                  print(prefix .. ' Signal ' .. tostring(signal))
                end
              end,
            },
            ['avqa-cot'] = {
              cmd = { '/home/cpsc477_ew579/.nvm/versions/node/v22.14.0/bin/pyright' },
              file_types = { 'python' },
              root_dir = '/home/cpsc477_ew579/palmer_scratch/avqa-cot',
              on_exit = function(code, signal, client_id)
                local prefix = '[Client ' .. tostring(client_id) .. ']'
                print(prefix .. ' LSP exited with code ' .. tostring(code))

                -- Signal can be nil
                if signal ~= nil then
                  print(prefix .. ' Signal ' .. tostring(signal))
                end
              end,
            },
          },
        },
      },
    }
  end,
}
