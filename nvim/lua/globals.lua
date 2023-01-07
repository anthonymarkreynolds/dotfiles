local set = vim.opt

-- GLOBAL DEFAULTS

-- tabs
set.expandtab = true -- convert tabs to spaces
set.tabstop = 2 -- 2 spaces per tab
set.shiftwidth = 2 -- 2 spaces per (auto)indent

--
set.cursorline = true -- highlight current row

-- search
set.hlsearch = false -- disable previous search highlighting
set.ignorecase = true -- ignore case in search patterns
set.smartcase = true -- override 'ignorecase' if contains uppercase

--
set.splitright = true
set.wrap = true
set.scrolloff = 5 -- min cursor offset from top/bottom

set.fileencoding = "UTF-8"
set.hidden = true -- hides unloaded buffers
set.number = true
set.relativenumber = true

-- list chars
set.list = true -- enable listchars
set.listchars = "tab:-->,trail:●,eol:↴,space:⋅"

set.mouse = "a" -- enable mouse support

set.termguicolors = true -- enable 24-bit RBG color
set.laststatus = 3 -- enable global statusline
