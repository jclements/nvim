return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls", "clangd"},
				--ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			--require("java").setup()
			local lspconfig = require("lspconfig")
			--lspconfig.ccls.setup {
				--init_options = {
					--cache = {
						--directory = ".ccls-cache";
					--};
				--}
			--}
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({
				cmd = {
					"clangd",
					"--suggest-missing-includes",
					--"--compile-commands-dir=/home/jeremy/code/c/include",
					--'--query-driver="C:\\MinGW\\bin\\g++*","C:\\MinGW\\bin\\gcc*',
				},
				filetypes = { "c", "objc", "h", "cpp" },
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})
			lspconfig.jdtls.setup({})
			--lspconfig.tsserver.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
