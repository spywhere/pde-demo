return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'onsails/lspkind-nvim',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-cmdline'
  },
  config = function ()
    local cmp = require('cmp')
    cmp.setup {
      formatting = {
        format = require('lspkind').cmp_format()
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<cr>'] = cmp.mapping.confirm {},
        ['<tab>'] = cmp.mapping(function (fallback)
          local copilot_key = vim.fn.exists('*copilot#Accept') == 1 and vim.fn['copilot#Accept']()
          if cmp.visible() then
            cmp.select_next_item()
          elseif copilot_key and copilot_key ~= '' then
            vim.api.nvim_feedkeys(copilot_key, 'i', true)
          else
            fallback()
          end
        end, { 'i', 's', 'c'}),
        ['<S-tab>'] = cmp.mapping(function (fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { 'i', 's', 'c' })
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer', keyword_length = 3, max_item_count = 8 }
      }
    }

    cmp.setup.cmdline(':', {
      sources = {
        { name = 'cmdline', keyword_length = 2 }
      }
    })
  end
}
