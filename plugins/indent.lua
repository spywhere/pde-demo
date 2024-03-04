return {
  'lukas-reineke/indent-blankline.nvim',
  dependencies = {
    'nmac427/guess-indent.nvim',
  },
  config = function ()
    require('ibl').setup {
      indent = {
        char = '▏',
      },
      scope = {
        show_start = false,
        show_end = false
      }
    }
    require('guess-indent').setup {}
  end
}
