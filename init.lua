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
vim.filetype.add({
	extension = {
		asm = "bmasm",
	},
})

vim.api.nvim_set_hl(0, "Pmenu", { fg = "#d3c6aa", bg = "#222C30" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#d3c6aa", bg = "#222C30" })
