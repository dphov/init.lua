return {
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    --theme
    'liuchengxu/space-vim-dark',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
    --    "Mofiqul/vscode.nvim",
    {
        "microsoft/vscode-js-debug",
        lazy = true,
        build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    },

    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    { "mxsdev/nvim-dap-vscode-js",       dependencies = "mfussenegger/nvim-dap" },
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    "nvim-treesitter/playground",
    "nvim-lua/plenary.nvim",
    "ThePrimeagen/harpoon",
    "ThePrimeagen/refactoring.nvim",
    "mbbill/undotree",
    "tpope/vim-vinegar",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",
    {
        'neoclide/coc.nvim',
        branch = 'release'
    },
    -- {
    --     "VonHeikemen/lsp-zero.nvim",
    --     branch = "v3.x",
    --     dependencies = {
    --         -- LSP Support
    --         { "neovim/nvim-lspconfig" },
    --         {
    --             "williamboman/mason.nvim",
    --             build = function()
    --                 pcall(vim.cmd, "MasonUpdate")
    --             end,
    --         },
    --         { "williamboman/mason-lspconfig.nvim" },
    --         -- Autocompletion
    --         { "hrsh7th/cmp-nvim-lsp" },
    --         { "hrsh7th/cmp-buffer" },
    --         { "hrsh7th/cmp-path" },
    --         { "hrsh7th/cmp-cmdline" },
    --         { "hrsh7th/cmp-nvim-lua" },
    --         { "hrsh7th/nvim-cmp" },
    --         { "hrsh7th/cmp-nvim-lsp-signature-help" },
    --         -- status
    --         { "nvim-lua/lsp-status.nvim" },
    --         -- Snippets
    --         { "L3MON4D3/LuaSnip" },
    --         { "saadparwaiz1/cmp_luasnip" },
    --         { "rafamadriz/friendly-snippets" },
    --     },
    -- },
    "folke/zen-mode.nvim",
    "eandrju/cellular-automaton.nvim",
    "laytan/cloak.nvim",
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    },

    "gpanders/editorconfig.nvim",
    --    "leafOfTree/vim-svelte-plugin",
    {
        "numToStr/Comment.nvim",
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
        },
    },
    "brenoprata10/nvim-highlight-colors",
    'mfussenegger/nvim-lint',
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }
}
