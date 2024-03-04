return {
  'kdheepak/lazygit.nvim',
  init = function ()
    vim.g.lazygit_floating_window_winblend = 15
  end,
  config = function ()
    vim.api.nvim_set_keymap('n', '<leader>g', ':LazyGit<cr>', { noremap = true, silent = true })
  end
}
