return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function ()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files)
    vim.keymap.set('n', '<leader>f', builtin.live_grep)
    vim.keymap.set('n', '<leader>b', builtin.buffers)
    vim.keymap.set('n', '<leader>r', builtin.lsp_document_symbols)
    vim.keymap.set('n', '<leader>R', builtin.lsp_workspace_symbols)

    local actions = require('telescope.actions')
    local layout_actions = require('telescope.actions.layout')
    require('telescope').setup {
      defaults = {
        scroll_strategy = 'limit',
        layout_config = {
          horizontal = { width = 0.9, height = 0.9 }
        },
        dynamic_preview_title = true,
        winblend = 15,
        preview = {
          hide_on_startup = true
        },
        mappings = {
          i = {
            ['<esc>'] = actions.close,
            ['<S-Up>'] = actions.preview_scrolling_up,
            ['<S-Down>'] = actions.preview_scrolling_down,
            ['<C-u>'] = actions.results_scrolling_up,
            ['<C-d>'] = actions.results_scrolling_down,
            ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
            ['<C-_>'] = layout_actions.toggle_preview
          }
        }
      }
    }
  end
}
