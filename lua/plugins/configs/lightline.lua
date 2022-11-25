local g = vim.g
local set = vim.opt

set.showmode = false

g.lightline = {
    colorscheme = "one",
    component = {
        branchIcon = "",
    },
    active = {
        left = {{"mode", "paste"}, {"branchIcon", "gitbranch"}, {"readonly", "filename", "modified"}}
    },
    component_function = {
        gitbranch = "FugitiveHead",
    }
}

