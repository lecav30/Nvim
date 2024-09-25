return {
	---------------------------------------------------------------------------------
	-------------------------------- VimFeatures ------------------------------------
	---------------------------------------------------------------------------------
	"windwp/nvim-autopairs", -- Autopairs
	{ "kevinhwang91/nvim-ufo", dependencies = "kevinhwang91/promise-async" }, -- Fold
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"rcarriga/nvim-notify",
		},
	}, -- Notifications
	---------------------------------------------------------------------------------
	---------------------------------- Smooth----------------------------------------
	---------------------------------------------------------------------------------
	{
		"nacro90/numb.nvim",
		config = function()
			require("numb").setup()
		end,
	}, -- Peek lines
	"gen740/SmoothCursor.nvim", -- Smooth cursor
	---------------------------------------------------------------------------------
	------------------------------------ Zen ----------------------------------------
	---------------------------------------------------------------------------------
	"folke/zen-mode.nvim", -- Zen mode
	"folke/twilight.nvim", -- Twilight
}