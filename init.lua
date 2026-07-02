-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

vim.filetype.add({
	extension = {
		csproj = "xml",
		props = "xml",
		targets = "xml",
	},
})

vim.g.everforest_background = "hard"
vim.g.everforest_colors_override = {
	bg_dim = { "#14191C", "NONE" },
	bg0 = { "#1B2227", "NONE" },
	bg1 = { "#222C30", "NONE" },
	bg2 = { "#2B3539", "NONE" },
	bg3 = { "#333D42", "NONE" },
	bg4 = { "#3B4348", "NONE" },
	bg5 = { "#414D4A", "NONE" },
}
vim.cmd("colorscheme everforest")

vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4
vim.cmd("set sw=4")
