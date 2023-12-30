return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-file-browser.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    local fb_actions = require "telescope".extensions.file_browser.actions

    local function telescope_buffer_dir()
      return vim.fn.expand('%:p:h')
    end

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      extensions = {
          file_browser = {
            -- theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            mappings = {
              -- your custom insert mode mappings
              ["n"] = {
                -- your custom normal mode mappings
                ["N"] = fb_actions.create,
                ["-"] = fb_actions.goto_parent_dir,
                ["/"] = function()
                  vim.cmd("startinsert")
                end,
                ["<C-u>"] = function(prompt_bufnr)
                  for i = 1, 10 do
                    actions.move_selection_previous(prompt_bufnr)
                  end
                end,
                ["<C-d>"] = function(prompt_bufnr)
                  for i = 1, 10 do
                    actions.move_selection_next(prompt_bufnr)
                  end
                end,
              },
            },
          },
        }
      })

    local telescope = require("telescope")
    telescope.load_extension("fzf")
    telescope.load_extension("file_browser")

    -- set keymaps
    vim.keymap.set("n", "<leader>pe", function()
      telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        -- previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 }
      })
    end)

    local keymap = vim.keymap -- for conciseness
    -- do we really need this ? 
    -- maybe, with all the .gitignore/@node-modules
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

    -- go next / previous item in qflist
    vim.keymap.set("n", "<F35>", "<C-w>jj<CR>", { silent = true })
    vim.keymap.set("n", "<F34>", "<C-w>jk<CR>", { silent = true })
    -- exit
    vim.keymap.set("n", "<F36>", "<C-w>j<C-w>q", {noremap = true, silent = true })

    
  end,
}
