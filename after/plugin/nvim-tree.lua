-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true


-- OR setup with some options
require("nvim-tree").setup {
  view = {
    side = "right",
    float = {
      enable = true,
      quit_on_focus_loss = false,
    },
  },
}


-- 定义一个打开普通窗口nvim-tree的函数
local function open_regular_nvim_tree()

    local WIDTH_RATIO = 0.3
    local HEIGHT_RATIO = 0.8
    local OFFSET = 3
    require('nvim-tree').setup({
        view = {
            float = {
                enable = true,
                open_win_config = function()
                    local screen_w = vim.opt.columns:get() 
                    local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                    local window_w = screen_w * WIDTH_RATIO
                    local window_h = screen_h * HEIGHT_RATIO
                    local window_w_int = math.floor(window_w)
                    local window_h_int = math.floor(window_h)

                    -- adjust for the offset
                    local col_right_aligned = screen_w - window_w_int - OFFSET
                    local row_offset = OFFSET - 3


                    return {
                        border = 'rounded',
                        relative = 'editor',
                        row = row_offset,
                        col = col_right_aligned,
                        width = window_w_int,
                        height = window_h_int,
                    }
                end,
            },
            width = function()
                return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            end,
        },
    })

        vim.cmd('NvimTreeToggle')

end

-- 设置一个新的快捷键绑定，例如使用'tn'来打开普通窗口的nvim-tree
vim.keymap.set('n', 'tn', open_regular_nvim_tree)


vim.keymap.set('n', 'tt', ":NvimTreeToggle<CR>")
vim.keymap.set('n', 'tf', ":NvimTreeFindFile<CR>")
