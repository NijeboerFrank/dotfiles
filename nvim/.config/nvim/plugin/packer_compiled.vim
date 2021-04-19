" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/frank/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/frank/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/frank/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/frank/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/frank/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["format.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["lf.vim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/lf.vim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["neuron.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/neuron.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lua-guide"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-lua-guide"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
  },
  nvim_utils = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/nvim_utils"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/surround.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/frank/.local/share/nvim/site/pack/packer/start/wal.vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
