return {
  -- 1. Configure LSP to swap servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable OmniSharp (The one crashing)
        omnisharp = { enabled = false },
        
        -- Enable csharp_ls (The stable one)
        csharp_ls = {
          -- Ensure it handles standard C# files
          filetypes = { "cs" },
        },
      },
    },
  },
}
