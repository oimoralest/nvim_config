local M = require("core.mappings")

M.key_mapper("n", M.leader.."md", M.cmd.."MarkdownPreview"..M.cr)
M.key_mapper("n", M.leader.."ms", M.cmd.."MarkdownPreviewStop"..M.cr)
