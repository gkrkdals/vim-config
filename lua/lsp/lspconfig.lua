local nvim_lsp = require'lspconfig'
local cmp = require'cmp'

vim.diagnostic.config({
	virtual_text = false,
	severity_sort = true,
	float = {
		border = 'rounded',
		source = 'always',
	}
})

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	
	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'E', vim.diagnostic.open_float, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
 	vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  	vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  	vim.keymap.set('n', '<space>wl', function()
   		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  	end, bufopts)
  	vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
 	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  	vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-n>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' }
	}, {
		{ name = 'buffer' }
	})
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- pyright setup
nvim_lsp.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- rust analyzer setup
nvim_lsp.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})



-- Show line diagnostics automatically in hover window
-- vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]
