local lsp_zero = require('lsp-zero')
require'lspconfig'.pylsp.setup{}
require'lspconfig'.gopls.setup{}

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.setup_servers({'gopls'},{'pylsp'})
