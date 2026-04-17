-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.tabstop = 4
vim.filetype.add({
	extension = {
		asm = "masm",
	},
})
-- stop the freaking markdown LSP from badgering us with warnings.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.diagnostic.enable(false)
		vim.opt.conceallevel = 2
		vim.opt_local.wrap = false
		vim.opt_local.sidescrolloff = 8
	end,
})
