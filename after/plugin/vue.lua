-- ~/.config/nvim/lua/lsp/vue.lua


  local lspconfig = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  lspconfig.vuels.setup {
    capabilities = capabilities,
    filetypes = { 'vue', 'html' }, -- 支持 vue 和 html 文件
    init_options = {
      config = {
        vetur = {
          useWorkspaceDependencies = true,
          validation = {
            template = true,
            script = true,
            style = true,
            templateProps = true,
            interpolation = true
          },
          completion = {
            autoImport = true,
            tagCasing = 'kebab',
            useScaffoldSnippets = true
          },
        }
      }
    }
  }


