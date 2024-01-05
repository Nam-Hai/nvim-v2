return {
  "numToStr/Comment.nvim",
  config = function()
    
    local comment = require("Comment")
    comment.setup({
      toggler = {
        ---Line-comment keymap
        line = "<M-a>",
        -- -Block-comment keymap
      },
      opleader = {
        ---Line-comment keymap
        line = "<M-a>",
        ---Block-comment keymap
      },
      mapping = {
        extra = false,
      },
    })
  end
}
