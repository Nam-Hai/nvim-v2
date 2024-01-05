return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
    config = function()
      -- load the colorscheme here
      require("solarized-osaka").setup({
        -- use_background = "dark",
        -- style = "day",
        transparent = false, -- Enable this to disable setting the background color
        on_highlights = function(hl, c)
          hl.LineNr = { fg = c.blue300 }
          hl.CursorLineNr = { fg = c.magenta100, sp = c.base1 }
          -- CursorLine = { bg = c.base03, sp = c.base1 }
          hl.Visual = { bg = c.base03 }
          hl.IncSearch = { fg = "#000000", bg = c.red }      -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
          hl.Search = { fg = "#000000", bg = c.magenta500 }  -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
          hl.MatchParen = { fg = c.base0, bg = c.magenta500 } -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

          hl.YankyPut = { bg = "#000000", fg = c.magenta500 }
          hl.YankyYanked = { link = "YankyPut" }

          hl["@constructor"] = { fg = c.magenta300 }      -- Set to a color different from the brackets
          hl["@constructor.lua"] = { fg = c.base0 }       -- Set to a color different from the brackets

          hl["@punctuation.delimiter"] = { fg = c.base0 } -- For delimiters ie: `.`
          hl["@punctuation.bracket"] = { fg = c.base0 }   -- For brackets and parens.
          hl["@punctuation.special"] = { fg = c.base0 }   -- For special punctutation that does not fall in the catagories before.
          hl["@punctuation.special.markdown"] = { fg = c.base0, bold = true }

          hl.Type = { fg = c.cyan100 }

          hl["@tag"] = { fg = c.orange }
          hl["@tag.delimiter"] = { fg = c.base0 }
          -- hl["@keyword"] = { fg = c.magenta500 } -- For keywords that don't fall in previous categories.
          -- hl["@keyword.function"] = { fg = c.magenta500 } -- For keywords that don't fall in previous categories.
        end,
      })

      vim.cmd [[colorscheme solarized-osaka]]
    end,
  }
}
