local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',  function()
	--vim.fn 是一个特殊的表（table），它提供了对 Vimscript 函数的访问。这意味着你可以通过 vim.fn 调用内置的 Vimscript 函数。
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)



