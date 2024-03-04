return {
  'github/copilot.vim',
  init = function ()
    vim.g.copilot_no_tab_map = 1
    vim.g.copilot_assume_mapped = 1
    vim.g.copilot_tab_fallback = ''
    vim.g.copilot_filetypes = {
      TelescopePrompt = false,
      DressingInput = false
    }
  end
}
