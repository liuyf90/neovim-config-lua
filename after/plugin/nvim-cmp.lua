local cmp = require('cmp')

cmp.setup({
  sources = {
      --Copilot source
    {name = 'copilot', group_index = 2},
    --other Sources
    {name = 'nvim_lsp',group_index =2 },
    {name = 'path',group_index =2 },
    {name = 'luasnip',group_index =2 },
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({
      -- documentation says this is important.
      -- I don't know why.
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    })
  })
})



