return {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
    -- Optional: Keymaps to mimic VS Code actions
    keys = {
        { "co", "<Plug>(git-conflict-ours)", desc = "Git Conflict: Choose Ours" },
        { "ct", "<Plug>(git-conflict-theirs)", desc = "Git Conflict: Choose Theirs" },
        { "cb", "<Plug>(git-conflict-both)", desc = "Git Conflict: Choose Both" },
        { "c0", "<Plug>(git-conflict-none)", desc = "Git Conflict: Choose None" },
        { "]x", "<Plug>(git-conflict-prev-conflict)", desc = "Previous Conflict" },
        { "[x", "<Plug>(git-conflict-next-conflict)", desc = "Next Conflict" },
    },
}
