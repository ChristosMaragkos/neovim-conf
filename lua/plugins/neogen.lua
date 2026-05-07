return {
	"danymat/neogen",
	config = true,
	keys = {
		{
			"<leader>cn",
			function()
				require("neogen").generate()
			end,
			desc = "Generate Annotations (Neogen)",
		},
	},
	opts = {
		languages = {
			cs = {
				template = {
					annotation_convention = "xmldoc", -- to generate the summary XML tag
				},
				-- Pick up types as well
				search_through_parents = true,
				nodes = {
					class = "class_declaration",
					struct = "struct_declaration",
					enum = "enum_declaration",
					interface = "interface_declaration",
					record = "record_declaration",
					method = "enum_declaration",
					property = "enum_declaration",
				},
			},
		},
	},
}
