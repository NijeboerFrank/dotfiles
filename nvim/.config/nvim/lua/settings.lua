-- Some general settings
vim.cmd("set iskeyword+=-")                  -- treat dash separated words as a word text object"
vim.wo.wrap=false                            -- disable line wraps
vim.o.mouse="a"
vim.cmd("set ts=4")                          -- 1 Tab == 4 spaces
vim.cmd("set sw=4")                          -- 1 Indent == 4 spaces 
vim.bo.expandtab=true                        -- Tabs are converted to spaces
vim.bo.smartindent=true                      -- Smart indenting


-- Stuff that is important for the colorscheme
vim.o.t_Co="256"                             -- Set 256 colors
vim.cmd("let g:impact_transbg=1")
vim.o.termguicolors=true

-- Show numbers and cursor line highlighted
vim.wo.number=true
-- vim.wo.cursorline=true
vim.o.showmode=false


-- Time to type a command
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 300 -- By default timeoutlen is 1000 ms

-- Clipboard options
vim.o.clipboard="unnamedplus"


-- File encoding
vim.o.fileencoding="utf-8"


vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.cmdheight = 2 -- More space for displaying messages
