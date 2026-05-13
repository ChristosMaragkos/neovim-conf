return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				table.insert(opts.ensure_installed, "fsharp")
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				fsautocomplete = {},
			},
		},
	},
	{
		"ionide/Ionide-vim",
		ft = { "fsharp", "fsharp_project" },
		config = function()
		end,
	},
}
