vim.opt.updatetime = 50
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- auto indent
vim.opt.ai = true
vim.opt.si = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.encoding='utf-8'
vim.opt.fileencoding='utf-8'
vim.opt.cursorline = true -- highlight the current cursor line

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.opt.updatetime = 500

vim.opt.clipboard= "unnamed"

-- vim.highlight.on_yank = true
vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank()")

vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank({higroup='Search', timeout=150})")


vim.cmd(":set ignorecase")
