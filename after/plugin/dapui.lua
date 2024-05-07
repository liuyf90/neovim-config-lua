local dapui = require("dapui")
dapui.setup()

vim.keymap.set('n', '<leader>dt', function() dapui.toggle() end)
vim.keymap.set('n', '<leader>db', ":DapToggleBreakpoint<CR>")

