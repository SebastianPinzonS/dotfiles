return { 
    --[["rose-pine/neovim", 
    name = "rose-pine", 
    priority=1000,
    config = function()
        vim.cmd.colorscheme "rose-pine"
    end ]]-- 
    --[["catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme "catppuccin"
    end ]]--`
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
    end
}

