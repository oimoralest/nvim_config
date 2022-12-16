local M = require("core.mappings")

M.key_mapper("n", M.leader.."gitd", M.cmd.."Git diff"..M.cr)
M.key_mapper("n", M.leader.."gits", M.cmd.."Git status"..M.cr)
M.key_mapper("n", M.leader.."gitl", M.cmd.."Git log --oneline"..M.cr)
M.key_mapper("n", M.leader.."gitb", M.cmd.."Git blame"..M.cr)
