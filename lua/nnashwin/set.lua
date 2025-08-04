vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.tw = 140
vim.opt.termguicolors = true
vim.opt.guicursor = "n-v:block-Cursor"

vim.cmd([[set termguicolors]])
vim.cmd([[autocmd BufWritePost * FormatWrite]])
vim.cmd([[let g:netrw_bufsettings = 'noma nomod nu rnu nowrap ro']])
