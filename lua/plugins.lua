--Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function()
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- Better time loading lua modules
        use "lewis6991/impatient.nvim"

        -- THEMES
        -- Moonfly
        use "bluz71/vim-moonfly-colors"
        -- Catppuccin
        use {
            "catppuccin/nvim",
            as = "catppuccin"
        }
        -- Solarized
        -- Light
        -- use "shaunsingh/solarized.nvim"
        -- Dark
        use "overcache/NeoSolarized"

        -- Indentation guides to all lines
        use "lukas-reineke/indent-blankline.nvim"

        -- Autopairs
        use "windwp/nvim-autopairs"

        -- Treesitter - Highlight and indent
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }

        -- Format
        use "sbdchd/neoformat"

        -- Rainbow
        use "p00f/nvim-ts-rainbow"

        -- Icons for nerd fonts
        use "kyazdani42/nvim-web-devicons"

        -- File explorer
        use {
            "nvim-telescope/telescope.nvim",
            requires = {{"nvim-lua/plenary.nvim"}}
        }

        -- Tree file explorer
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons"
            }
        }

        -- Completion engine plugin
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig"
        }

        -- CMP - Completation engine plugin
        use {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp"
        }
        -- LuaSnip
        use "L3MON4D3/LuaSnip"
        use "saadparwaiz1/cmp_luasnip"
        -- Friendly snippets
        use "rafamadriz/friendly-snippets"
        -- Icons for lsp
        use "onsails/lspkind.nvim"
        -- Better performance for lsp
        use "tami5/lspsaga.nvim"

        -- Start screen
        use {
            "goolord/alpha-nvim",
            config = function()
                require "alpha".setup(require "alpha.themes.dashboard".opts)
            end
        }

        -- Bufferline
        use(
            {
                "noib3/nvim-cokeline",
                requires = "kyazdani42/nvim-web-devicons",
                config = function()
                    require("cokeline").setup()
                end
            }
        )

        -- Lualine, best statusline in lua
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }

        -- Better comments for neovim
        use "terrortylor/nvim-comment"

        -- Close tag HTML
        use "alvan/vim-closetag"

        -- Rename tag HTML
        use "AndrewRadev/tagalong.vim"

        -- Lorem ipsum for neovim
        use "vim-scripts/loremipsum"

        -- Easymotion
        use {
            "phaazon/hop.nvim",
            branch = "v2", -- optional but strongly recommended
            config = function()
                -- you can configure Hop the way you like here; see :h hop-config
                require "hop".setup {keys = "etovxqpdygfblzhckisuran"}
            end
        }

        -- Toggle Term
        use {
            "akinsho/toggleterm.nvim",
            tag = "*",
            config = function()
                require("toggleterm").setup()
            end
        }

        -- Latex
        use "lervag/vimtex"

        -- Discord presence
        use "andweeb/presence.nvim"
    end
)
