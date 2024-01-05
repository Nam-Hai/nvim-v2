vim.g.mapleader = " "

-- vim.keymap.set("n", "<C-c>", "<C-c>")
vim.keymap.set("c", "<CR>", "<CR>:noh<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "n", "n<CR>:noh<CR>")
-- vim.keymap.set("n", "N", "n<CR>:noh<CR>")

vim.keymap.set("n", " ", "<nop>", { noremap = true })

-- vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

vim.keymap.set("n", "Ω", ":set wrap!<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "<nop>")
vim.keymap.set("n", "<C-z>", "<nop>", { noremap = true })

-- x dont yank
-- vim.keymap.set("n", "x", "_x")
vim.keymap.set("n", "<leader>dw", 'bvaw"_d')

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "G", "Gzz")

-- search is on center
vim.keymap.set("n", "n", "n:noh<CR>zzzv")
vim.keymap.set("n", "N", "N:noh<CR>zzzv")

-- greatest remap ever, paste to void
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to clip
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without yankTefdsfs
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-s>", ":wa<cr>", { noremap = true, silent = true })


-- increment
vim.keymap.set("n", "+", "<C-a>", { noremap = true })
vim.keymap.set("n", "-", "<C-x>", { noremap = true })

-- vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", { noremap = true })
-- vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>", { noremap = true })

-- vim.keymap.set("i", "(", "()<left>", {noremap = true})
-- vim.keymap.set("i", "[", "[]<left>", {noremap = true})
-- vim.keymap.set("i", "{", "{}<left>", {noremap = true})

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>", { noremap = true })

vim.keymap.set("n", "<F8>", ":TSHighlightCapturesUnderCursor<CR>")

vim.keymap.set("n", "<C-->", ":bw<CR>", { noremap = true })
