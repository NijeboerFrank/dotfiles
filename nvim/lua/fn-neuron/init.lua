-- these are all the default values
require'neuron'.setup {
    virtual_titles = true,
    mappings = false,
    neuron_dir = vim.fn.expand("~/Documents/neuron"), -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
}

local neuronLeader = "gz"

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

vim.api.nvim_set_keymap('n', neuronLeader .. 'n', [[<Cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 'z', [[<Cmd>lua require'neuron/telescope'.find_zettels()<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 'Z', [[<Cmd>lua require'neuron/telescope'.find_zettels {insert = true}<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 'b', [[<Cmd>lua require'neuron/telescope'.find_backlinks()<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 'B', [[<Cmd>lua require'neuron/telescope'.find_backlinks {insert = true}<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 't', [[<Cmd>lua require'neuron/telescope'.find_tags()<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. 's', [[<Cmd>lua require'neuron'.rib {address = "127.0.0.1:8200", verbose = true}<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. ']', [[<Cmd>lua require'neuron'.goto_next_extmark()<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. '[', [[<Cmd>lua require'neuron'.goto_prev_extmark()<CR>]], {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', neuronLeader .. '<CR>', [[<Cmd>lua require'neuron'.enter_link()<CR>]], {noremap = true, silent=true})
