local present, packer = pcall(require, "packer")

if not present then
    print("No packer found!")
    local install_path = "~/.local/share/nvim/site/pack/packer/start/packer.nvim"
    local execute = vim.api.nvim_command

    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
    execute("packadd packer.nvim")

    packer = require("packer")
end


return packer.startup(function(use)
    -- NvimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly',
        config = require("plugins.configs.nvimtree")
    }

    -- Mason
    use {
        "williamboman/mason.nvim",
        config = require("plugins.configs.mason")
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        config = require("plugins.configs.mason_lspconfig") -- See: https://github.com/williamboman/mason-lspconfig.nvim#default-configuration
    }

    -- lspconfig
    use {
        "neovim/nvim-lspconfig",
        config = require("plugins.configs.lspconfig") -- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    }

    -- Autocomplete
    use {
        "neoclide/coc.nvim",
        branch = "release",
        config = require("plugins.configs.coc")
    }

    -- Theme
    use {
        "rafi/awesome-vim-colorschemes",
        config = require("plugins.configs.theme")
    }

    use {
        "itchyny/lightline.vim",
        config = require("plugins.configs.lightline")
    }

    use {
        "olimorris/onedarkpro.nvim",
        config = require("plugins.configs.theme")
    }

    -- Tagbar
    use {
        "preservim/tagbar",
        config = require("plugins.configs.tagbar")
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        ["do"] = ":TSUpdate",
        config = require("plugins.configs.treesitter")
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = require("plugins.configs.telescope")
    }

    -- ToggleTerm
    use {
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = require("plugins.configs.toggleterm")
    }

    -- Auto save
    use {
        "Pocco81/auto-save.nvim",
        config = require("plugins.configs.auto_save")
    }

    -- Float terminal
    use {
        "voldikss/vim-floaterm",
        config = require("plugins.configs.floaterm")
    }

    -- Git
    use {
        "tpope/vim-fugitive",
        requires = {
            {
                "airblade/vim-gitgutter",
                config = require("plugins.configs.gitgutter")
            }
        },
        config = require("plugins.configs.fugitive")
    }

    -- Github Copilot
    use {
        "github/copilot.vim",
        run = "git clone https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim",
        config = require("plugins.configs.copilot"),
        ["do"] = ":Copilot setup"
    }

    -- D2 highlighter
    use {
        "terrastruct/d2-vim"
    }

    -- Markdown Preview
    use {
        "iamcco/markdown-preview.nvim",
        run = [[cd ~/.local/share/nvim/site/pack/packer/start/
        git clone https://github.com/iamcco/markdown-preview.nvim.git
        cd markdown-preview.nvim
        yarn install
        yarn build]],
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
        config = require("plugins.configs.markdown_preview")
    }
    end)
