local leader = "<space>"
local cmd = "<cmd>"
local cr = "<CR>"
local esc = "<ESC>"

local M = {}

M.leader = leader
M.cmd = cmd
M.cr = cr
M.esc = esc

vim.g.mapleader = leader

local key_mapper = function(mode, key, action)
    vim.api.nvim_set_keymap(
        mode,
        key,
        action,
        {noremap = true, silent = true}
    )
end

M.key_mapper = key_mapper

-- NvimTree
key_mapper("n", leader.."fe", cmd.." NvimTreeToggle "..cr) -- Toggle nvimtree
key_mapper("n", leader.."ft", cmd.." NvimTreeFocus"..cr)

-- Files
key_mapper("n", leader.."sf", cmd.." w "..cr) -- Save file
key_mapper("n", leader.."cf", cmd.." q "..cr) -- Close buffer

-- Tabs
key_mapper("n", leader.."nt", cmd.." tabnew "..cr) -- New tab
key_mapper("n", leader.."ct", cmd.." tabclose "..cr) -- Close tab
key_mapper("n", leader.."gt", cmd.." tabnext "..cr) -- Next tab

-- Tagbar
key_mapper("n", "<F8>", cmd.." TagbarToggle "..cr) -- Toogle Tagbar

return M

