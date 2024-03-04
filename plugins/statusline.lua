return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'Mofiqul/vscode.nvim',
  },
  init = function ()
    vim.o.laststatus = 3
    vim.o.cmdheight = 0
  end,
  config = function ()
    require('lualine').setup {
      options = {
        theme = 'vscode'
      }
    }
  end
}
