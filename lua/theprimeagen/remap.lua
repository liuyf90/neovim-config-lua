--键入<leader>pv,将退回到目录树中
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--可视模式下，大写的J和K可以上下移动选中的内容
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
-- 在光标处插入寄存器的内容
vim.keymap.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland
-- 系统级复制
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
--左右上下窗口切换
vim.keymap.set("n", "gh", "<c-w>h")
vim.keymap.set("n", "gj", "<c-w>j")
vim.keymap.set("n", "gk", "<c-w>k")
vim.keymap.set("n", "gl", "<c-w>l")
vim.keymap.set("n", "<C-W>M", "<C-W>|<C-W>_", { silent = true })
vim.keymap.set("n", "<C-W>m", "<C-W>=", {silent = true})

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- 用ctrl+c替代<esc>
vim.keymap.set("i", "<C-c>", "<Esc>")

--禁用大写Q
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--格式化代码
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- 显示下一个err
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- 显示上一个err
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--对光标所在词进行批量修改
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--对当前文件赋予执行权限
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--缓冲区导航映射
vim.keymap.set("n", "[b", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "]b", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "[B", ":bfirst<CR>", { silent = true })
vim.keymap.set("n", "]B", ":blast<CR>", { silent = true })



--lazygit

