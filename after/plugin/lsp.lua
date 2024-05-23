local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    --  lsp_zero.default_keymaps({buffer = bufnr})
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'jdtls',
    },
    handlers = {
        -- this first function is the "default handler"
        -- it applies to every language server without a "custom handler"
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        -- this is the "custom handler" for `tsserver`
        tsserver = function()
            require('lspconfig').tsserver.setup({
                single_file_support = false,
                on_attach = function(client, bufnr)
                    print('hello tsserver')
                end
            })
        end,
        -- noop is an empty function that doesn't do anything, because I want to set it myself in jdtls.lua
        jdtls = lsp_zero.noop,

    }
})

lsp_zero.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})


--保存自动格式化
vim.cmd [[augroup FormatAutogroup

  autocmd!
  autocmd BufWritePost *.js,*.ts,*.jsx,*.tsx,*.json,*.html,*.css,*.scss,*.md lua formatting()
augroup END]]

function _G.formatting()
    vim.lsp.buf.format()
end
