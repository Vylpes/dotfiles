local wk = require("which-key")

wk.add({
    -- General
    { "mm", mode = "n", desc = "Remove Highlights" },
    { "<leader>/", mode = "n", desc = "Help" },

    { "<leader>h", group = "Harpoon" },
    { "<leader>ha", desc = "Add file" },
    { "<leader>hh", desc = "Open quick menu" },
    { "<leader>h1", desc = "Open file 1" },
    { "<leader>h2", desc = "Open file 2" },
    { "<leader>h3", desc = "Open file 3" },
    { "<leader>h4", desc = "Open file 4" },

    { "<leader>f", group = "find" },
    { "<leader>ff", desc = "Find file" },
    { "<leader>fg", desc = "Find grep" },

    { "<leader>g", group = "Git" },
    { "<leader>gs", desc = "Git status" },
    { "<leader>gd", desc = "Git diff" },
    { "<leader>gb", desc = "Git branches" },
    { "<leader>gc", desc = "Git commits" },
    { "<leader>gt", desc = "Git tags" },
    { "<leader>gh", desc = "Git stash" },

    { "<leader>l", group = "LSP" },
    { "<leader>lr", desc = "References" },
    { "<leader>ld", desc = "Definitions" },
    { "<leader>lt", desc = "Typedefs" },
    { "<leader>li", desc = "Implementations" },
})
