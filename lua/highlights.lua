vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 30
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 30
vim.opt.background = 'dark'

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
