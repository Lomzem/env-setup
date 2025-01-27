return {
	"ibhagwan/fzf-lua",
	lazy = true,
	opts = {
		fzf_opts = {
			["--select-1"] = true,
		},
	},
	cmd = "FzfLua",
	keys = {
		{ "<C-p>", "<cmd>FzfLua files<cr>" },
		{ "<leader>ps", "<cmd>FzfLua live_grep<cr>" },
	},
}
