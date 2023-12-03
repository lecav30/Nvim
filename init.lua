vim.g.mapleader = " "
if vim.g.vscode then
  require("vscode")
else
	require("keymappings")
	require("settings")
end

-- Mapping helper
-- local mapper = function(mode, key, result)
--   vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
-- end
