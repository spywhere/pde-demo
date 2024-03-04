return {
  'nvim-treesitter/nvim-treesitter',
  config = function ()
    require('nvim-treesitter.configs').setup {
      auto_install = true,
      ensure_installed = {
        'c_sharp', 'dockerfile', 'dot', 'html', 'javascript',
        'json', 'json5', 'jsonc', 'lua', 'markdown', 'markdown_inline',
        'sql', 'toml', 'tsx', 'typescript',
        'vim', 'yaml'
      },
      highlight = {
        enable = true
      }
    }
  end
}
