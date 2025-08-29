return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	
	-- remove when this is merge: https://github.com/LazyVim/LazyVim/pull/6354
	{
		"catppuccin/nvim",
		opts = function(_, opts)
			local module = require("catppuccin.groups.integrations.bufferline")
			if module then
				module.get = module.get_theme
			end
			return opts
		end,
	},
}
