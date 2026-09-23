local schema_path = vim.fn.expand("~/.config/nvim/schemas/Microsoft.Build.CommonTypes.xsd")

return {
	{
		"mason-org/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry", -- The one for Roslyn
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lemminx = {
					settings = {
						xml = {
							schemas = {
								{
									fileMatch = { "*.csproj", "*.props", "*.targets" },
								},
							},
						},
					},
				},
			},
		},
	},

	{
		"GustavEikaas/easy-dotnet.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		config = function()
			require("easy-dotnet").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lemminx = {
					filetypes = { "xml", "xsd", "xsl", "xslt", "svg", "csproj" },
					settings = {
						xml = {
							fileAssociations = {
								{
									systemId = schema_path,
									pattern = "**/*.csproj",
								},
								{
									systemId = schema_path,
									pattern = "**/*.props",
								},
								{
									systemId = schema_path,
									pattern = "**/*.targets",
								},
							},
							completion = {
								autoCloseTags = true,
							},
							validation = {
								schema = true,
							},
						},
					},
				},
			},
		},
	},
}
