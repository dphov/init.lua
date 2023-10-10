local linters = {
    css = { "stylelint", "cspell" },
    javascript = { "eslint", "cspell" },
    javascriptreact = { "stylelint", "eslint", "cspell" },
    typescript = { "eslint", "cspell" },
    typescriptreact = { "stylelint", "eslint", "cspell" },
    html = { "cspell" },
    json = { "cspell" },
    svelte = { 'eslint', 'cspell' },
}


local languages = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "lua",
    "rust",
    "typescript",
    "typescriptreact",
    "svelte",
    "vue",
}
for _, name in pairs(languages) do
    if not linters[name] then
        linters[name] = { "cspell" }
    end
    if not vim.tbl_contains(linters[name], "cspell") then
        table.insert(linters[name], "cspell")
    end
end

require("lint").linters_by_ft = linters

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})
