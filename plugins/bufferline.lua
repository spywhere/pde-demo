return {
  'akinsho/nvim-bufferline.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function ()
    vim.api.nvim_set_keymap('n', '<A-w>', '<cmd>bdelete! %<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-Left>', '<cmd>bprev<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-Right>', '<cmd>bnext<cr>', { noremap = true, silent = true })

    local title = function ()
      local name = vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
      if name == '' then
        return 'EXPLORER: NO FOLDER OPENED'
      end
      return 'EXPLORER: ' .. string.upper(name)
    end
    require('bufferline').setup {
      options = {
        offsets = { { filetype = "NvimTree", text = title, text_align = "left" } },
      },
      highlights = {
        fill = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
          fg = { attribute = "bg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
          fg = { attribute = "fg", highlight = "Special" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        close_button_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
      },
    }
  end
}
