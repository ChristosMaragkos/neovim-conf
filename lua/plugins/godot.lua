return {
	{ "habamax/vim-godot" },
	{ "skywind3000/asyncrun.vim" },
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				sources = {
					explorer = {
						ignored = false,
						exclude = {
							"*.uid",
							"*.import",
							".godot",
							"server.pipe",
						},
					},
				},
			},
		},
	},
}
