return{
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    opts = {
        style = "night",
        transparent = true,

        ---@param hl tokyonight.Highlights
        ---@param c ColorScheme
        on_hightlights = function(hl,c)
            -- test
            hl.CodeBlock = {
                bg = "#16161e"
            }

            hl.RenderMarkdownCode = {
                bg = "#16161e"
            }

            hl["@markup.raw.markdown_inline"] = {
                bg = c.magenta2,
                fg = "#7aa2f7"
            }

            hl.Comment = {
                bg = "#7aa2f7"
            }

        end
    },

    config = function(_, opts)
        --require("tokyonight").setup(opts) -- calling setup is optional
        require('tokyonight').setup({
        style = "night",
        transparent = true,

        ---@param hl tokyonight.Highlights
        ---@param c ColorScheme
        on_hightlights = function(hl,c)
            -- test
            hl.CodeBlock = {
                bg = "#16161e"
            }

            hl.RenderMarkdownCode = {
                bg = "#16161e"
            }

            hl["@markup.raw.markdown_inline"] = {
                bg = c.magenta2,
                fg = "#7aa2f7"
            }

            hl.Comment = {
                bg = "#7aa2f7"
            }

        end
        })
        vim.cmd [[colorscheme tokyonight]]
    end
}
