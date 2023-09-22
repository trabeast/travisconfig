vim.g.neoformat_try_node_exe = true

vim.cmd("autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx Neoformat")
