local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  "jedi_language_server",
	  "lua_ls"
  },
})

-- local on_attach = function(_, bufnr)
--	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
--	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--
--	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
--	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
--	vim.keymap.set("n", "gr", require('telescope.builtin'), {})
--	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- end

require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.lua_ls.setup{}

