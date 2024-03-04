return {
  'goolord/alpha-nvim',
  config = function ()
    local dashboard = require('alpha.themes.dashboard')
    local section = dashboard.section
    local config = dashboard.config

    local buttons = section.buttons
    buttons.val = {
      dashboard.button('e', '  New file', ':enew<CR>'),
      dashboard.button('<C-p>', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('<leader>f', '  Find word', ':Telescope live_grep<CR>'),
      dashboard.button('<leader>b', '  Buffers', ':Telescope buffers<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>')
    }

    local marginFromTop = 0.3
    local verticalPadding = math.max(2, math.floor(vim.fn.winheight(0) * marginFromTop))

    config.layout = {
      { type = 'padding', val = verticalPadding },
      section.header,
      { type = 'padding', val = 2 },
      buttons,
      section.footer
    }

    require('alpha').setup(config)
  end
}
