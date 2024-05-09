local dap, dapui = require("dap"), require("dapui")

dapui.setup()
dap.adapters.java = function(callback)
  -- FIXME:
  -- Here a function needs to trigger the `vscode.java.startDebugSession` LSP command
  -- The response to the command must be the `port` used below
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = 5005;
  })
end

dap.configurations.java = {
  {
    type = 'java';
    request = 'attach';
    name = "Debug (attach) to Port";
    hostName = "127.0.0.1";
    port = 5005;
  },
}
vim.keymap.set('n', '<leader>dt', function() dapui.toggle() end)
vim.keymap.set('n', '<leader>db', ":DapToggleBreakpoint<CR>")
vim.keymap.set('n', '<leader>dc', ":DapContinue<CR>")
vim.keymap.set('n', '<leader>dr', function() dapui.open({reset = true}) end)

