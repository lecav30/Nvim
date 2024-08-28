require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	PATH = "prepend",
})

require("mason-nvim-dap").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"cssls",
		"html",
		"emmet_ls",
		"tsserver",
		"tailwindcss",
		"diagnosticls",
		-- "astro",
		-- "clangd",
		-- "angularls",
		-- "volar",
	},
})
