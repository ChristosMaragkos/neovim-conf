return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "enter", -- Keep default enter logic
                ["<CR>"] = { "fallback" }, -- Disable enter for completion
                ["<Tab>"] = { "select_and_accept", "fallback" }, -- Use Tab
            },
        },
    },
}
