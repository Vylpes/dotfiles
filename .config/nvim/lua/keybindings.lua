-- Helper function
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

local opts = { silent = true, noremap = true, expr = true }

-- Move Lines Up/Down
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

map("n", "<A-h>", "<C-W>H", opts)
map("n", "<A-j>", "<C-W>J", opts)
map("n", "<A-k>", "<C-W>K", opts)
map("n", "<A-l>", "<C-W>L", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "gf", ":vert winc f<cr>", opts)

map("i", "<cr>", [[coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"]], opts)
map("i", "<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], opts)
map("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], opts)

map("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
map("n", "<C-n>", ":NERDTree<CR>", opts)
map("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
map("n", "<C-f>", ":NERDTreeFind<CR>", opts)

map("n", "<leader>ha", function() require("harpoon.mark").add_file() end, opts)
map("n", "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, opts)
map("n", "<leader>1", [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]], opts)
map("n", "<leader>2", [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]], opts)
map("n", "<leader>3", [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]], opts)
map("n", "<leader>4", [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]], opts)
map("n", "<A-[>", [[<cmd>lua require("harpoon.ui").nav_prev()<CR>]], opts)
map("n", "<A-]>", [[<cmd>lua require("harpoon.ui").nav_next()<CR>]], opts)

map("n", "<leader>ff", ":FZF<CR>", opts)

map("n", "mm", ":nohl<CR>", opts)