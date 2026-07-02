local nvim_lsp = require('lspconfig')

nvim_lsp.tsserver.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false  -- Disable formatting by tsserver
  end,
  root_dir = nvim_lsp.util.root_pattern("package.json", ".git"),
}

