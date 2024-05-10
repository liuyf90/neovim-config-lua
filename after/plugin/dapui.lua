local dap, dapui = require("dap"), require("dapui")

dapui.setup()
--dap.adapters.java = function(callback)
--  -- FIXME:
--  -- Here a function needs to trigger the `vscode.java.startDebugSession` LSP command
--  -- The response to the command must be the `port` used below
--  callback({
--    type = 'server';
--    host = 'localhost';
--    port = 5005;
--  })
--end

dap.configurations.java = {
  {
    name = "Launch Java",
    javaExec = "java",
    request = "launch",
    type = "java",
  },
  {
    type = 'java';
    request = 'attach';
    name = "Debug (attach) to Port";
    hostname = "localhost";
    port = 5005;
  },
}
--dap.configurations.java = {
--  {
--     -- You need to extend the classPath to list your dependencies.
--     -- `nvim-jdtls` would automatically add the `classPaths` property if it is missing
--    classPaths = {},
--
--    -- If using multi-module projects, remove otherwise.
--    projectName = "yourProjectName",
--
--    javaExec = "/path/to/your/bin/java",
--    mainClass = "your.package.name.MainClassName",
--
--    -- If using the JDK9+ module system, this needs to be extended
--    -- `nvim-jdtls` would automatically populate this property
--    modulePaths = {},
--    name = "Launch YourClassName",
--    request = "launch",
--    type = "java"
--  },
--}
vim.keymap.set('n', '<leader>dt', function() dapui.toggle() end)
vim.keymap.set('n', '<leader>db', ":DapToggleBreakpoint<CR>")
vim.keymap.set('n', '<leader>dc', ":DapContinue<CR>")
vim.keymap.set('n', '<leader>dr', function() dapui.open({reset = true}) end)

vim.keymap.set('n', '<leader>dn', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<leader>di', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<leader>do>', ":lua require'dap'.step_out()<CR>")

