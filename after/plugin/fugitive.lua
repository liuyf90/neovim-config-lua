vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
--vim.keymap.set("n", "<leader>gt", function() vim.cmd("Git commit") end)
vim.keymap.set("n", "<leader>gt", function()
    vim.cmd("Git commit -a -m" ..'"'.. vim.fn.input("Commit message: ")..'"')
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ga", function() vim.cmd("Git add .") end)

