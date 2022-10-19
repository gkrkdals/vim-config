local opts={ noremap=true, silent=true }
vim.keymap.set('n', '<C-t>', ":NERDTreeToggle<CR>", opts)
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>', opts)
vim.keymap.set('n', '<C-f>', ':NERDTreeFocus<CR>', opts)

-- associated with lspconfig 
vim.keymap.set('n', 'E', ":lua vim.diagnostic.open_float(nil, {focus=false})<CR>")
