require"format".setup {
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    lua = {{cmd = {"lua-format -i"}}},
    markdown = {{cmd = {"prettier -w"}}},
    python = {{cmd = {"black"}}}
}

vim.api.nvim_set_keymap('n', '<leader>lf', ':Format<CR>', {silent = false})
