local wk = require("which-key")

wk.register({
	["<leader>"] = {
		b = {
			name = "+buffer",
			l = { "<cmd>Telescope buffers<cr>", "Buffers" },
			d = { "<cmd>bdelete<cr>", "Delete Buffer" },
		},
		c = {
			name = "+code",
			a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
			d = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Code Diagnostics" },
			f = { "<cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<cr>", "Format Code" },
			l = { "Comment Line" },
			b = { "Comment Block" },
		},
    db = { "<cmd>Lspsaga show_buf_diagnostics<cr>", "Diagnostics" },
		-- e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
		e = { "<cmd>Neotree float toggle<cr>", "File Explorer" },
		o = { "<cmd>Lspsaga outline<cr>", "Outline" },
		f = {
			name = "+find",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
			s = { "<cmd>Lspsaga finder<cr>", "Find uses" },
			w = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Current Buffer Fuzzy" },
			o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		},
		g = {
			name = "+git & lsp",
			b = { "<cmd>Telescope git_branches<cr>", "Git Branches" },
			c = { "<cmd>Telescope git_commits<cr>", "Git Commits" },
			d = { "Go to Definition" },
			D = { "Go to Declaration" },
			i = { "Go to Implementation" },
			I = { "<cmd>Gitignore<cr>" },
			s = { "<cmd>Telescope git_status<cr>", "Git Status" },
      t = { "<cmd>Lspsaga peek_type_definition<cr>", "Peek type definition" },
      p = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
		},
		k = { "<cmd>Lspsaga hover_doc<cr>", "Hover Doc" },
		q = {
			name = "+quit",
			q = { "Quit current file" },
			a = { "Quit all" },
		},
		rn = { "<cmd>Lspsaga rename<cr>", "Rename" },
		w = {
			name = "+save",
			w = { "Save file" },
			a = { "Save all files" },
			q = { "Save all files and quit" },
		},
		v = {
			name = "+vimtex",
			v = { "<cmd>VimtexView<cr>", "View" },
			e = { "<cmd>VimtexErrors<cr>", "Errors" },
			c = { "<cmd>VimtexCompile<cr>", "Compile" },
			s = { "<cmd>VimtexStatus<cr>", "Status" },
			t = { "<cmd>VimtexStop<cr>", "Stop" },
		},
	},
})
