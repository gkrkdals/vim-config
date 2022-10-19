-- nvim pre-settings

vim.cmd [[set autoindent]]
vim.cmd [[set cindent]]
vim.cmd [[set smartindent]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set number]]
vim.cmd [[set ruler]]
vim.cmd [[set title]]
vim.cmd [[set wrap]]
vim.cmd [[set linebreak]]
vim.cmd [[set mouse=a]]
vim.cmd [[set encoding=UTF-8]]
vim.cmd [[set ai]]
vim.cmd [[set si]]
vim.cmd [[syntax enable]]
vim.cmd [[filetype plugin indent on]]
vim.cmd [[set clipboard=unnamed]]
vim.cmd [[autocmd InsertLeave * set nopaste]]

--autosave
vim.cmd [[let g:auto_save = 1]]
vim.cmd [[let g:auto_save_in_insert_mode = 0]]
vim.cmd [[let g:auto_save_silent = 1]]
