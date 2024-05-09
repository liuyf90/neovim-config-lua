--debugging
vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<CR>")
vim.keymap.set('n', '<leader>dn', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<leader>di', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<leader>do>', ":lua require'dap'.step_out()<CR>")
require('dap-go').setup({
    on_attach = function()
    end
})
