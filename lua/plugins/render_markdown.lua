return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	ft = { "markdown" },
	opts = {
		callout = {
			todo = {
				raw = "[!TODO]",
				rendered = "✓ Todo",
				highlight = "RenderMarkdownInfo",
			},
		},
	},
}
