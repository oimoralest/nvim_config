--local theme = "onedark"

--local present, onedarkpro = pcall(require, "onedarkpro")

--if not present then
--  return
--end

--vim.api.nvim_command("colorscheme "..theme)

--onedarkpro.setup({
--  caching = false, -- Use caching for the theme?
--  cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedarkpro/"), -- The path to the cache directory
--  colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
--  highlights = {}, -- Override default highlight and/or filetype groups
--  filetypes = { -- Override which filetype highlight groups are loaded
--    javascript = true,
--    lua = true,
--    markdown = true,
--    php = true,
--    python = true,
--    ruby = true,
--    rust = true,
--    toml = true,
--    typescript = true,
--    typescriptreact = true,
--    vue = true,
--    yaml = true,
--  },
--  plugins = { -- Override which plugin highlight groups are loaded
    -- See the Supported Plugins section for a list of available plugins
--  },
--  styles = { -- Choose from "bold,italic,underline"
--    types = "NONE", -- Style that is applied to types
--    numbers = "NONE", -- Style that is applied to numbers
--    strings = "NONE", -- Style that is applied to strings
--    comments = "NONE", -- Style that is applied to comments
--    keywords = "NONE", -- Style that is applied to keywords
--    constants = "NONE", -- Style that is applied to constants
--    functions = "NONE", -- Style that is applied to functions
--    operators = "NONE", -- Style that is applied to operators
--    variables = "NONE", -- Style that is applied to variables
--    conditionals = "NONE", -- Style that is applied to conditionals
--    virtual_text = "NONE", -- Style that is applied to virtual text
--  },
--  options = {
--    bold = true, -- Use bold styles?
--    italic = true, -- Use italic styles?
--    underline = true, -- Use underline styles?
--    undercurl = true, -- Use undercurl styles?
--
--    cursorline = false, -- Use cursorline highlighting?
--    transparency = false, -- Use a transparent background?
--    terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
--    window_unfocused_color = false, -- When the window is out of focus, change the normal background?
--  }
--})

local present, catppuccin = pcall(require, "catppuccin")

if not present then
  return
end

catppuccin.setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "macchiato",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
local theme = "gruvbox-material"
vim.g.gruvbox_material_background = "soft"


vim.api.nvim_command("colorscheme "..theme)

return theme
