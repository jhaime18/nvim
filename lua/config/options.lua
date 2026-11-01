-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Cursor
vim.opt.guicursor = "" -- Disable cursor styling

-- Line numbers
vim.opt.number = true -- Show absolute line number
vim.opt.relativenumber = true -- Show line numbers relative to the cursor

-- Tabs and indentation
vim.opt.tabstop = 4 -- Number of spaces a literal '\t' counts for
vim.opt.softtabstop = 4 -- Number of spaces a <Tab> counts for during editing
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of autoindent
vim.opt.expandtab = true -- Use spaces instead of tab characters
vim.opt.smartindent = true -- Smart auto-indenting on new lines

-- Line wrapping
vim.opt.wrap = false -- Disable line wrapping
vim.opt.linebreak = true -- Break lines at word boundaries

-- Backup, swap, and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true -- Persistent undo

-- Search
vim.opt.hlsearch = false -- Disable highlight search
vim.opt.incsearch = true -- Incremental search

-- UI / Appearance
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.conceallevel = 2

-- Make the background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- Providers
vim.g.loaded_node_provider = 1
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python3_provider = 1

-- EditConfig
-- Disable automatic application of .editorconfig settings.
-- Useful when working with existing projects where you want to
-- preserve the project's orginal formatting.
vim.g.editorconfig = false
