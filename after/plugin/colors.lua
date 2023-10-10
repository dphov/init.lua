function ColorMyPencils(color)
    color = color or "space-vim-dark"
    vim.cmd.colorscheme(color)
    -- vim.o.termguicolors = true
    -- vim.o.background = "dark"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
