-- Helper function
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

local opts = { silent = true, noremap = true }
local optsExpr = { silent = true, noremap = true, expr = true }

-- Move Lines Up/Down
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Move Splits
map("n", "<A-h>", "<C-W>H", opts)
map("n", "<A-j>", "<C-W>J", opts)
map("n", "<A-k>", "<C-W>K", opts)
map("n", "<A-l>", "<C-W>L", opts)

-- Navigate Splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Coc
map("i", "<cr>", [[coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"]], optsExpr)
map("i", "<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], optsExpr)
map("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], optsExpr)

-- NerdTree
map("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
map("n", "<C-n>", ":NERDTree<CR>", opts)
map("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
map("n", "<C-f>", ":NERDTreeFind<CR>", opts)

-- Harpoon
map("n", "<leader>ha", [[<cmd>lua require("harpoon.mark").add_file()<CR>]], opts)
map("n", "<leader>hh", [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]], opts)
map("n", "<leader>1", [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]], opts)
map("n", "<leader>2", [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]], opts)
map("n", "<leader>3", [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]], opts)
map("n", "<leader>4", [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]], opts)
map("n", "<A-[>", [[<cmd>lua require("harpoon.ui").nav_prev()<CR>]], opts)
map("n", "<A-]>", [[<cmd>lua require("harpoon.ui").nav_next()<CR>]], opts)

-- FZF: Files
map("n", "<leader>ff", [[<Cmd>lua require"fzf-lua".files()<CR>]], opts)
map("n", "<leader>fg", [[<Cmd>lua require"fzf-lua".grep()<CR>]], opts)

-- FZF: Git
map("n", "<leader>gs", [[<Cmd>lua require"fzf-lua".git_status()<CR>]], opts)
map("n", "<leader>gd", [[<Cmd>lua require"fzf-lua".git_diff()<CR>]], opts)
map("n", "<leader>gb", [[<Cmd>lua require"fzf-lua".git_branches()<CR>]], opts)
map("n", "<leader>gc", [[<Cmd>lua require"fzf-lua".git_commits()<CR>]], opts)
map("n", "<leader>gt", [[<Cmd>lua require"fzf-lua".git_tags()<CR>]], opts)
map("n", "<leader>gh", [[<Cmd>lua require"fzf-lua".git_stash()<CR>]], opts)

-- FZF: LSP
map("n", "<leader>lr", [[<Cmd>lua require"fzf-lua".lsp_references()<CR>]], opts)
map("n", "<leader>ld", [[<Cmd>lua require"fzf-lua".lsp_definitions()<CR>]], opts)
map("n", "<leader>lt", [[<Cmd>lua require"fzf-lua".lsp_typedefs()<CR>]], opts)
map("n", "<leader>li", [[<Cmd>lua require"fzf-lua".lsp_implementations()<CR>]], opts)

-- General
map("n", "mm", ":nohl<CR>", opts)
map("n", "<leader>/", [[<Cmd>lua require("which-key").show({ global = true })<CR>]], opts)