vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.api.nvim_set_hl(0, "NormalFloat", {bg='#3B4252'})
vim.api.nvim_set_hl(0, "FloatBorder", {bg='#3B4252', fg="#3B4252"})
