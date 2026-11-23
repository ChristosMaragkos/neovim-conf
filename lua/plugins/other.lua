return {
	"tpope/vim-abolish",
	{ "godlygeek/tabular", cmd = "Tabularize" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({ "make", "bash" })

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "make",
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
}
