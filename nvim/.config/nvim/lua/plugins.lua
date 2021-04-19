-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " ..
                install_path)
    execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)

    -- Let packer manage itself
    -- https://github.com/wbthomason/packer.nvim
    use "wbthomason/packer.nvim"

    -- Information
    use "nanotee/nvim-lua-guide"

    -- Quality of life https://github.com/norcalli/nvim_utils
    use "norcalli/nvim_utils"

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "nvim-treesitter/nvim-treesitter-refactor"
    use "nvim-treesitter/playground"
    use "p00f/nvim-ts-rainbow"

    -- Colorschemes
    use "christianchiarulli/nvcode-color-schemes.vim"
    use 'dylanaraps/wal.vim'


    -- Show colors in line
    use 'norcalli/nvim-colorizer.lua'

    -- Floating terminal in vim
    use "voldikss/vim-floaterm"

    -- LF file manager in nvim
    use "ptzz/lf.vim"

    -- Vim QuickScope
    use "unblevable/quick-scope"

    -- Pair ( and " and [ etc.
    use "windwp/nvim-autopairs"

    -- Surround
    use "blackCauldron7/surround.nvim"

    -- Easy comments
    use "terrortylor/nvim-comment"

    -- Auto indenting fixes
    use "tpope/vim-sleuth"

    -- Easymotion like plugin
    use "phaazon/hop.nvim"

    -- Zettelkasten
    -- use "oberblastmeister/neuron.nvim"

    -- Fuzzy finding with telescope
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use 'nvim-telescope/telescope-media-files.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-jdtls'
    use 'kabouzeid/nvim-lspinstall'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

    -- Rooter
    use 'airblade/vim-rooter'

    -- Sudo write
    use 'tpope/vim-eunuch'

    -- Devicons
    use "kyazdani42/nvim-web-devicons"

    -- Tree
    use "kyazdani42/nvim-tree.lua"

    -- Galaxyline
    use 'glepnir/galaxyline.nvim'

    -- Which key wrapper in lua
    use {
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'}
    }

    use 'lukas-reineke/format.nvim'

end)
