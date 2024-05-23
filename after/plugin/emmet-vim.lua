


-- 设置 emmet-vim 不要全局安装
vim.g.user_emmet_install_global = 0

-- 为特定文件类型安装 Emmet
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"html", "css"},
  callback = function()
    vim.cmd("EmmetInstall")
  end,
})

-- 在插入模式下将 <C-Z> 映射到 Emmet 的扩展命令
vim.api.nvim_set_keymap('i', '<C-y>', '<Plug>(emmet-expand-abbr)', { noremap = true, silent = true })

