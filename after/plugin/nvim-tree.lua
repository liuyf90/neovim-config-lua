---- disable netrw at the very start of your init.lua
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--
---- optionally enable 24-bit colour
--vim.opt.termguicolors = true
--
--
--
--
--
--            local WIDTH_RATIO = 0.3
--            local HEIGHT_RATIO = 0.8
--            local OFFSET = 3
--            require('nvim-tree').setup({
--                view = {
--                    float = {
--                        enable = true,
--                        quit_on_focus_loss = false,
--                        open_win_config = function()
--                            local screen_w = vim.opt.columns:get() 
--                            local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
--                            local window_w = screen_w * WIDTH_RATIO
--                            local window_h = screen_h * HEIGHT_RATIO
--                            local window_w_int = math.floor(window_w)
--                            local window_h_int = math.floor(window_h)
--
--                            -- adjust for the offset
--                            local col_right_aligned = screen_w - window_w_int - OFFSET
--                            local row_offset = OFFSET - 3
--
--
--                            return {
--                                border = 'rounded',
--                                relative = 'editor',
--                                row = row_offset,
--                                col = col_right_aligned,
--                                width = window_w_int,
--                                height = window_h_int,
--                            }
--                        end,
--                    },
--                    width = function()
--                        return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
--                    end,
--                },
--            })
--
--
--
--
--
--
--
--            vim.keymap.set('n', 'tt', ":NvimTreeToggle<CR>")
--            vim.keymap.set('n', 'tf', ":NvimTreeFindFile<CR>")
--            



-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  
    -- 设置忽略的文件或目录
  ignore = {".git", "node_modules", ".cache"},
  view = {
      width = 30,  -- 设置宽度
      side = 'right',  -- 设置位置为右侧
      auto_resize = true,  -- 自动调整大小
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.keymap.set('n', 'tt', ":NvimTreeToggle<CR>")
vim.keymap.set('n', 'tf', ":NvimTreeFindFile<CR>")
