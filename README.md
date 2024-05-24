v# 使用的插件

1. packer 包管理器 https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart
2. telescope 模糊查询工具 https://github.com/nvim-telescope/telescope.nvim
	<C-x>	Go to file selection as a split
	<C-v>	Go to file selection as a vsplit
	<C-t>	Go to a file in a new tab
3. rose-pine 配色工具 https://github.com/rose-pine/neovim
4. treesitter 语法高亮  https://github.com/nvim-treesitter/nvim-treesitter 
5. treesitter-playground https://github.com/nvim-treesitter/playground
6. harpoon 鱼叉导航工具 https://github.com/ThePrimeagen/harpoon
7. undotree 撤销树 https://github.com/mbbill/undotree
8. fugitive.vim:  Fugitive is the premier Vim plugin for Git  https://github.com/tpope/vim-fugitive
9. lsp-zero: lsp语言服务器, 类ide https://github.com/VonHeikemen/lsp-zero.nvim?tab=readme-ov-file
     安装Lsp服务 	在命令行下 :Mason,然后选择要安装的lspserver,按i 安装
10.lspkind-nvim:  cmp的样式 https://github.com/onsails/lspkind.nvim
11. nvim-tree 树形菜单   https://github.com/nvim-tree/nvim-tree.lua
12. copilot Github的copilot https://github.com/onsails/lspkind.nvim
13. copilot-cmp  copilot的样式及快捷键 https://github.com/zbirenbaum/copilot-cmp
14. galaxyline: 底栏的样式   "NTBBloodbath/galaxyline.nvim",


# 快捷键
| 组             | 功能描述                                 | 快捷键         |
|----------------|------------------------------------------|----------------|
|                | 打开关闭菜单                             | tt            |
|                | 回到普通模式                             | `esc`, `<C-[>` |
| 导航定位       | 调出树形菜单                             | `<leader>+pv`  |
|                | 上一个缓冲区                             | `[b`           |
|                | 下一个缓冲区                             | `]b`           |
|                | 第一个缓冲区                             | `[B`           |
|                | 最后一个缓冲区                           | `]B`           |
| 搜索文件       | 查找文件                                 | `<leader>+pf`  |
|                | 按照正则查找文件内容                     | `<leader>+ps`  |
|                | 查找被git管理的文件 相当于执行 `git ls-files` | `<C-p>`      |
|                | 在目录树下新建文件                       | `%`            |
|                | 在目录树下新建目录                       | `d`            |
| 文件编辑       | 文件版本回退                             | `<leader>+u`   |
|                | 对光标所在词进行批量修改光标当前的字符替换 (vim的搜索替换形式) | `<leader>+s` |
| git (fugitive) | 查看git状态                             | `<leader>+gs`  |
|                | 执行git add .                           | `<leader>+ga`  |
|                | 执行git commit                          | `<leader>+gt`  |
| 暂存(鱼叉)     | 将当前文件加入到鱼叉中                   | `<leader>+a`   |
| 暂存           | 显示鱼叉的窗口                           | `<C-e>`        |
|                | 快速取出鱼叉编号1的文件                  | `<C-h>`        |
|                | 快速取出鱼叉编号2的文件                  | `<C-t>`        |
|                | 快速取出鱼叉编号3的文件                  | `<C-n>`        |
|                | 快速取出鱼叉编号4的文件                  | `<C-s>`        |
| Copilot        | 选取建议                                 | `<C-Y>`        |
| LSP            | 建议上选                                 | `<C-p>`        |
|                | 建议下选                                 | `<C-n>`        |
|                | 跳转到定义                               | `gd`           |
|                | 显示悬浮文档                             | `K`            |
|                | 查看工作区诊断                           | `<leader>vws`  |
|                | 查看文档诊断                             | `<leader>vd`   |
|                | 跳转到上一个诊断                         | `[d`           |
|                | 跳转到下一个诊断                         | `]d`           |
|                | 执行代码操作                             | `<leader>vca`  |
|                | 重命名引用                               | `<leader>vrr`  |
|                | 跳转到下一个引用                         | `<leader>vrn`  |
|                | 回到上一个光标位置                       | `<C-i>`        |
|                | 格式化代码                               | `<leader>+f`   |
|                | 下一个错误                               | `<C-k>`        |
|                | 上一个错误                               | `<C-j>`        |
|                |  高亮切换                         | `<leader>h`           |
|                |  获得代码提示                         | `<leader><space>`           |
|                |  从提示中确认，带入到插入模式                         | `<CR>`           |
| 操作快捷键     | 整行移动 向下 (可视模式下)               | `J`            |
|                | 整行移动 向上 (可视模式下)               | `K`            |
|                | 以当前行为基础,将下行拉到本行后面 (普通模式)   | `J`            |
|                | 上下半页跳转                             | `<C-d>`, `<C-u>`|
|                | split 横向增加窗口panel                  | `<c-w>+v`      |
|                | split 纵向增加窗口panel                  | `<c-w>+s`      |
| 系统级操作     | 快速回到命令行窗口,但不退出nvim          | `<c-z>`        |
|                | 从shell返回nvim                          | `fg`           |
| Debug               | 打开关闭调试器                          | `<leader>dt`           |
|                |  标记断点                         | `<leader>db`           |




在springboot等依赖grable,mvn等环境的项目中,可能直接打开java文件会有很多error提示,这是因为工程文件没有建立

在build.grable文件中加入eclispe的工程支持
 >>>
 		plugins {
    			id 'eclipse'
		}
  >>>
在sh中执行
>>>
		./gradlew eclipse
