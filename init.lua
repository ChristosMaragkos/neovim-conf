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

vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
