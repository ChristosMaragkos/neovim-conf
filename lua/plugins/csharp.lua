return {
  -- Fix Mason by including BOTH the default and the Roslyn registry
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",    -- The one you were missing!
        "github:Crashdummyy/mason-registry", -- The one for Roslyn
      },
    },
  },

  -- Configure the Roslyn plugin
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {
      exe = {
        "dotnet",
        vim.fn.stdpath("data") .. "/mason/packages/roslyn/Microsoft.CodeAnalysis.LanguageServer.dll",
      },
      config = {
        -- This helps Roslyn find your Godot .sln automatically
        settings = {
          ["csharp|background_analysis"] = {
            dotnet_compiler_diagnostics_scope = "fullSolution",
            dotnet_analyzer_diagnostics_scope = "fullSolution",
          },
        },
      },
    },
  },

  -- Disable the old servers in lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = { enabled = false },
        csharp_ls = { enabled = false },
      },
    },
  },
}
