return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	opts = { transparent_background = true },
	-- },

	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	opts = {
	-- 		variant = "moon",
	-- 		styles = {
	-- 			bold = true,
	-- 			italic = false,
	-- 		},
	-- 		-- variant = "main",
	-- 		disable_background = true,
	-- 		disable_float_background = true,
	-- 	},
	-- },

	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				-- floats = "transparent",
			},
		},
		init = ":colorscheme tokyonight",
	},

	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	opts = {
	-- 		transparent_mode = true,
	-- 	},
	-- },

	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	opts = {
	-- 		transparent = true,
	-- 	},
	-- },

	-- {
	-- 	"olivercederborg/poimandres.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("poimandres").setup({
	-- 			disable_background = true,
	-- 			disable_float_background = true,
	-- 		})
	-- 	end,
	-- },
}
