return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require('harpoon').setup(
      {
        tabline = true
      }
    )

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<C-a>", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>1", function()
      mark.set_current_at(1)
      mark.add_file()
    end, { noremap = true, silent = true })
    vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>2", function()
      mark.set_current_at(2)
      mark.add_file()
    end, { noremap = false, silent = true })


    vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>3", function()
      mark.set_current_at(3)
      mark.add_file()
    end, { noremap = true, silent = true })

    vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>4", function()
      mark.set_current_at(4)
      mark.add_file()
    end, { noremap = true, silent = true })

    vim.keymap.set("n", "<C-5>", function() ui.nav_file(5) end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>5", function()
      mark.set_current_at(5)
      mark.add_file()
    end, { noremap = true, silent = true })

    vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
    vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
    vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
    vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
    vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')
  end,
}
