vim.cmd("highlight DashboardHeader guifg=#ffffff")

local function time_date()
	local datetime = os.date(" %d-%m-%Y    %H:%M:%S  ")
	local version = vim.version()
	local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
	local message = "   後悔せずに生きよう"
	return datetime .. nvim_version_info .. message
end

return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
        require('dashboard').setup {
            theme = "hyper",
	        change_to_vcs_root = true,
	        config = {
		    header = {
		    	"                               ",
		    	"⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠻⣦⡀⠀⠀⠀⠀⢀⡴⠒⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀ ",
		    	"⠀⠀⠀⠀⠀⠀⣶⡶⠋⠀⣠⠀⠑⠖⠒⠒⠒⠯⣤⣦⡀⠹⣦⣀⠀⠀⠀⠀⠀⠀ ",
		    	"⠀⠀⠀⠀⠀⠀⠙⢛⢶⡾⡇⠀⣠⣤⣀⠀⠀⠀⠀⠈⠙⠻⣞⡉⠀⠀⠀⠀⠀⠀ ",
		    	"⠀⠠⣤⣄⣀⣀⡔⢡⠎⠀⠁⠎⠉⠉⢻⢷⣦⡀⠀⡄⠀⢢⣀⣹⡆⠀⠀⠀⠀⠀ ",
		    	"⠀⠀⠈⠓⣤⣀⡇⡏⠀⠀⠀⠀⠀⠀⠸⣜⣓⣩⣿⠇⣠⡤⠭⢿⣇⡀⠀⠀⠀⠀ ",
		    	"⠀⠀⠀⠀⣿⠉⢸⠁⠀⠀⠀⣠⣴⣶⠏⣰⣦⡉⠁⠈⣄⡐⠛⢿⠇⠙⣦⡟⡄⠀ ",
		    	"⠀⢀⣀⣼⠿⡄⢸⠀⠀⠀⡔⢹⡇⡿⢀⣿⣿⠙⣄⣠⠇⢳⡀⢠⣀⣠⣟⣠⢧⡀ ",
		    	"⠈⠛⠳⢤⣤⡇⢸⡀⠀⡼⠀⢸⠁⡇⢸⣿⢻⣰⢛⡿⠖⠛⠋⠉⠛⠛⠋⠁⠀⡷ ",
		    	"⠀⠀⠀⠀⣿⡀⠸⣇⢀⠇⠀⠈⠀⢣⠘⡏⠀⣿⠏⠐⠋⠙⠒⠲⠶⠶⠶⢶⠛⠁ ",
		    	"⠀⠀⠀⠀⢸⡷⢦⢿⡌⠀⠀⠀⠀⠀⠄⠹⡚⠋⠀⠀⠀⠀⣠⢆⠀⣀⣠⡟⠀⠀ ",
		    	"⠀⠀⢀⣴⣯⡤⣬⡏⢷⡄⠀⠀⠀⠀⠀⠀⠁⢀⢀⣀⠀⣚⡵⠋⠉⠉⠁⠀⠀⠀ ",
		    	"⠀⠀⠀⠀⠀⠀⠈⠻⣦⣹⣮⡢⢄⣀⣀⣠⢀⣿⠟⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀ ",
		    	"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⣷⣦⣭⠴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
		    	"",
		    	"",
		    	time_date(),
		    	"",
		    	"",
		    },
		    shortcut = {
			    { icon = " ", desc = "Update ", group = "@property", action = "Lazy update", key = "u" },
			    {
			    	icon = " ",
			    	desc = "Files ",
			    	group = "Label",
			    	action = "Telescope find_files",
			    	key = "f",
			    },
			    {
			    	icon = " ",
			    	desc = "Recent ",
			    	group = "String",
			    	action = "Telescope oldfiles",
			    	key = "r",
			    },
			    {
			    	icon = "󰮗 ",
			    	desc = "Grep ",
			    	group = "WarningMsg",
			    	action = "Telescope live_grep",
			    	key = "g",
			    },
			    {
			    	icon = "󰗼 ",
			    	desc = "Quit ",
			    	group = "ErrorMsg",
			    	action = "qall!",
			    	key = "q",
			    },
		    },
		    project = { limit = 8 },
		    mru = { limit = 10, cwd_only = true },
		    hide = {
		    	statusline = false,
		    },
		    footer = {},
	        },
        }
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
}
