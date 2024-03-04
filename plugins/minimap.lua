return {
  'wfxr/minimap.vim',
  init = function ()
    vim.g.minimap_close_filetypes = { 'startify', 'netrw', 'alpha', 'vim-plug' }
  end
}
