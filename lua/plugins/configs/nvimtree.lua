local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

nvimtree.setup({
	open_on_setup = false,
	open_on_setup_file = false,
	sort_by = "name",
	hijack_cursor = true,
	sync_root_with_cwd = true,
	update_focused_file = { enable = true },
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "!",
			info = "?",
			warning = "",
			["error"] = "",
		}
	},
	view = {
		adaptive_size = true,
		hide_root_folder = true,
		side = "right",
	},
	renderer = {
		group_empty = true,
		highlight_opened_files = "name",
		indent_markers = { enable = true },
		icons = {
			git_placement = "after",
			glyphs = {
        			default = "",
        			symlink = "",
        			folder = {
          				default = "",
          				empty = "",
          				empty_open = "",
          				open = "",
          				symlink = "",
          				symlink_open = "",
          				arrow_open = "",
          				arrow_closed = "",
        			},
        			git = {
          				unstaged = "✗",
          				staged = "✓",
          				unmerged = "",
          				renamed = "➜",
          				untracked = "★",
          				deleted = "",
          				ignored = "◌",
        			},
     	 		},
		},
	},
	filters = {
		custom = {
			"__pycache__",
			".git",
		},
	},
})
