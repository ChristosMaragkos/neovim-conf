return {
	{
		"sainnhe/everforest",
		name = "everforest",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_background = "hard"
			vim.g.everforest_better_performance = 1
			vim.g.everforest_enable_italic = 1
			vim.g.everforest_colors_override = {
				bg_dim = { "#14191C", "NONE" },
				bg0 = { "#1B2227", "NONE" },
				bg1 = { "#222C30", "NONE" },
				bg2 = { "#2B3539", "NONE" },
				bg3 = { "#333D42", "NONE" },
				bg4 = { "#3B4348", "NONE" },
				bg5 = { "#414D4A", "NONE" },
			}

			-- makefile variable decls being white bothered by a lot
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "everforest",
				callback = function()
					vim.api.nvim_set_hl(0, "@string.special.symbol.make", { link = "Aqua" })
				end,
			})

			vim.cmd.colorscheme("everforest")
		end,
	},
}
