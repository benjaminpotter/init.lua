return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')

        -- Starting with just git_files keymap.
        -- Tried with just find_files but I don't want .gitignored stuff.
        -- Using the keymap "tf" for (t)elescope (f)ind.
        vim.keymap.set('n', '<leader>tf', builtin.git_files, {})

        -- Add search over entire project.
        -- Using the keymap "tg" for (t)elescope (g)rep.
        vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
    end
}
