local M = {}

function M.get_ops(options)
	local ops = {
		tab_repeat = true,
		panel = {
			left = {
				{
					["aerial.nvim"] = {
						open = "AerialOpen",
						close = "AerialClose",
						height = 1,
					},
				},
				{
					["nvim-tree.lua"] = {
						open = "NvimTreeToggle",
						close = "NvimTreeToggle",
						height = 1,
					},
				},
			},
		},
	}
	ops = require("switchpanel.utils").tableMerge(ops, options)
	return ops
end

return M