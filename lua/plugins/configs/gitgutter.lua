local M = require("core.mappings")

M.key_mapper("n", M.leader.."ngc", M.cmd.."GitGutterNextHunk"..M.cr)
M.key_mapper("n", M.leader.."pgc", M.cmd.."GitGutterPrevHunk"..M.cr)

