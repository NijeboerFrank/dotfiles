if vim.g.vscode then
    require("settings")
else
    -- General mappings
    require("globals")
    require("keymappings")
    require("settings")
    require("plugins")
    require("colorscheme")

    -- Plugin settings
    require("fn-hop")
    require("fn-comment")
    require("fn-treesitter")
    require("fn-floaterm")
    require("fn-telescope")
    require("fn-lspkind")
    require("fn-compe")
    require("fn-neuron")
    require("fn-autopairs")
    require("fn-surround")
    require("fn-nvim-tree")
    require("fn-galaxyline")
    require("fn-formatter")
    require("fn-whichkey")
    require("fn-colorizer")

    -- LSP
    require("lsp")
end
