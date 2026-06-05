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
