local M = require("core.mappings")

local height = "--height=0.8"
local width = "--width=0.8"

local mapCommand = function(map, command)
    M.key_mapper("n", string.format("%s%s", M.leader, map), string.format("%s FloatermNew %s %s %s %s", M.cmd, height, width, command, M.cr))
end

-- Open Floaterm
mapCommand("ct", "")

-- Git UI
-- requires lazygit
mapCommand("gitui", "lazygit")

-- Python interpreter
mapCommand("py", "python")

-- Nodejs interpreter
mapCommand("njs", "node")

