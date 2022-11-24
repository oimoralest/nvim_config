local present, builtin = pcall(require, 'telescope.builtin')

if not present then
    return
end

local mappings = require("core.mappings")

vim.keymap.set('n', mappings.leader..'ff', builtin.find_files, {})
vim.keymap.set('n', mappings.leader..'fg', builtin.live_grep, {})
vim.keymap.set('n', mappings.leader..'fb', builtin.buffers, {})
vim.keymap.set('n', mappings.leader..'fh', builtin.help_tags, {})

