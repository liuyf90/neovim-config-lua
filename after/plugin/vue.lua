local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.volar.setup {
  capabilities = capabilities,
  filetypes = { 'typescript', 'html', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  init_options = {
    typescript = {
      tsdk = '/path/to/your/typescript/lib' -- optional, you can leave it empty
    },
    languageFeatures = {
      implementation = true, -- enable 'go to implementation'
      references = true,
      definition = true,
      typeDefinition = true,
      callHierarchy = true,
      hover = true,
      rename = true,
      renameFileRefactoring = true,
      signatureHelp = true,
      codeAction = true,
      workspaceSymbol = true,
      completion = {
        defaultTagNameCase = 'both',
        defaultAttrNameCase = 'kebab',
        getDocumentNameCasesRequest = false,
        getDocumentSelectionRequest = false,
      },
    }
  }
}

