-- VSCode API
local vscode = require("vscode-neovim")

-- Mapping helper
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end
-- Mapping vscode
local mapvscode = function(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { expr = true }) -- expr is required
end

-- Save and Close
local save_file = function()
  return vscode.action("workbench.action.files.save")
end
mapvscode({"n"}, "<Leader>ww", save_file)

local quit_file = function()
  return vscode.action("workbench.action.closeActiveEditor")
end
mapvscode({"n"}, "<Leader>qq", quit_file)


-- Select All
mapper("n", "<C-a>", "gg<S-v>G")
