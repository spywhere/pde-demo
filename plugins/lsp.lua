return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig',
    'Hoffs/omnisharp-extended-lsp.nvim'
  },
  init = function ()
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
    vim.keymap.set('n', 'ga', vim.lsp.buf.code_action)
    vim.keymap.set('n', '<leader>td', vim.lsp.buf.type_definition)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references)
    vim.keymap.set('n', '<leader>d', function () vim.diagnostic.open_float(0, { scope = 'line' }) end)
    vim.keymap.set('n', '<leader>D', vim.diagnostic.setloclist)
    vim.keymap.set('n', '[d', function () vim.diagnostic.goto_prev { float = {} } end)
    vim.keymap.set('n', ']d', function () vim.diagnostic.goto_next { float = {} } end)

    vim.o.timeoutlen = 500
    vim.o.updatetime = 300
  end,
  config = function ()
    require('mason').setup {}
    require('mason-lspconfig').setup {
      automatic_installation = true
    }
    require('mason-lspconfig').setup_handlers {
      function (server_name)
        local options = {
          on_attach = function (client)
            if not client.server_capabilities.documentHighlightProvider then
              return
            end

            local lsp_group = vim.api.nvim_create_augroup('lsp', {})
            vim.api.nvim_create_autocmd('CursorHold', {
              group = lsp_group,
              pattern = '<buffer>',
              callback = vim.lsp.buf.document_highlight
            })
            vim.api.nvim_create_autocmd('CursorMoved', {
              group = lsp_group,
              pattern = '<buffer>',
              callback = vim.lsp.buf.clear_references
            })
          end
        }
        if server_name == 'omnisharp' then
          local command = { 'omnisharp' }
          table.insert(command, 'RoslynExtensionsOptions:EnableDecompilationSupport=true')
          if vim.fn.executable('asdf') == 1 then
            local sdk = string.gsub(vim.fn.system('asdf where dotnet-core'), '[ \n]*$', '')

            if string.find(sdk, 'No such plugin') == nil then
              table.insert(command, string.format('Sdk:Path=\'%s/sdk\'', sdk))
            end
          end
          options.cmd = command
          options.enable_roslyn_analyzers = true
          options.handlers = {
            ['textDocument/definition'] = require('omnisharp_extended').handler
          }
        end

        local status, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
        if status then
          options.capabilities = cmp_lsp.default_capabilities()
        end

        vim.diagnostic.config({
          virtual_text = false
        })
        require('lspconfig')[server_name].setup(options)
      end
    }
  end
}
