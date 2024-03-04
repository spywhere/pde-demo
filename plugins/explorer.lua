return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function ()
    require('nvim-tree').setup {
      renderer = {
        group_empty = true,
        root_folder_label = false,
        icons = {
          show = {
            folder = false
          }
        }
      },
      update_focused_file = {
        enable = true
      }
    }

    vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end
}
