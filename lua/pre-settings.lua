-- nvim pre-settings
vim.cmd [[set autoindent]]
vim.cmd [[set ai]]
vim.cmd [[set si]]
vim.cmd [[syntax enable]]
vim.cmd [[filetype plugin indent on]]
vim.cmd [[set clipboard=unnamed]]
vim.cmd [[autocmd InsertLeave * set nopaste]]

vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.conceallevel = 0
vim.opt.mouse = "a"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.showmode = false
vim.opt.tabline = "2"
vim.opt.smartcase = true
vim.opt.cindent = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.title = true
vim.opt.linebreak = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"
vim.opt.shortmess:append "c"

--autosave
vim.cmd [[let g:auto_save = 1]]
vim.cmd [[let g:auto_save_in_insert_mode = 0]]
vim.cmd [[let g:auto_save_silent = 1]]
