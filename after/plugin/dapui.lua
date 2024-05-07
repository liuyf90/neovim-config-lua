local dapui = require("dapui")
dapui.setup()

vim.keymap.set('n', '<leader>dt', function() dapui.toggle() end)
vim.keymap.set('n', '<leader>db', ":DapToggleBreakpoint<CR>")
vim.keymap.set('n', '<leader>dc', ":DapContinue<CR>")
vim.keymap.set('n', '<leader>dr', function() dapui.open({reset = true}) end)

