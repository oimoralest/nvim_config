local present, toggleterm = pcall(require, "toggleterm")

if not present then
    return
end

local mappings = require("core.mappings")

mappings.key_mapper("n", mappings.leader.."ct", mappings.cmd.." ToggleTerm "..mappings.cr)
mappings.key_mapper("t", mappings.esc.."ct", mappings.esc..mappings.cmd.." ToggleTerm "..mappings.cr)

toggleterm.setup({
})
