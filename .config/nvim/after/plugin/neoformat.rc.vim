let g:neoformat_try_node_exe = 1

autocmd BufWritePre *.html Neoformat
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.jsx Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.tsx Neoformat
