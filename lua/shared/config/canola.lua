vim.g.canola = {
    columns = {"icon",},
    watch = true,
    confirm = "delete",

    hidden = {
        enabled = false,
        patterns = { "^%." },
        always = {},
    },

    keymaps = {
        ["g?"] = { callback = "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<C-s>"] = { callback = "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { callback = "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { callback = "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = { callback = "actions.close", mode = "n" },
        ["<C-l>"] = "actions.refresh",
        ["-"] = { callback = "actions.parent", mode = "n" },
        ["_"] = { callback = "actions.open_cwd", mode = "n" },
        ["`"] = { callback = "actions.cd", mode = "n" },
        ["g~"] = { callback = "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { callback = "actions.change_sort", mode = "n" },
        ["gx"] = "actions.open_external",
        ["g."] = { callback = "actions.toggle_hidden", mode = "n" },
        ["q"] = { callback = "actions.close", mode = "n" },
    },

    lsp = { enabled = true, timeout_ms = 1000, autosave = false },

}

-- Open
vim.keymap.set("n", "-", "<CMD>Canola<CR>", { desc = "Open parent directory" })
