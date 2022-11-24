local set = vim.opt

-- Set the behavior of tab
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- Visual behavior
set.number = true
set.relativenumber = true
set.cursorline = true
set.list = true
set.listchars:append({
    space = ".",
    tab = "->",
})
set.termguicolors = true
