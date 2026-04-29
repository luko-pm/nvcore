return{
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    opts = {
        style = "night",
        transparent = true,


        ---@param colors ColorScheme
        on_colors = function(colors)
            colors.bg_highlight = "#24283B"
        end,

        ---@param hl tokyonight.Highlights
        ---@param c ColorScheme
        on_highlights = function(hl, c)

            hl["@markup.raw.block.markdown"] = {
                bg = c.bg_highlight
            }

            hl["@markup.raw.markdown_inline"] = {
                bg = c.bg_highlight
            }

        end
    },

    config = function(_, opts)
        require("tokyonight").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyonight]]
    end
}
