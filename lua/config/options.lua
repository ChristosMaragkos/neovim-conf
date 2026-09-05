-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.filetype.add({
	extension = {
		asm = "masm",
	},
})
-- stop the freaking markdown LSP from badgering us with warnings.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function(args)
		vim.diagnostic.enable(false, { bufnr = args.buf })
		vim.opt.conceallevel = 2
	end,
})

-- JUST GIVE ME FOUR-SPACE TABS DAMN IT
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
