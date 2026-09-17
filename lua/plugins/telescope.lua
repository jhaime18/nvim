return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  init = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fp", builtin.git_files, { desc = "Telescope git files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-h>"] = actions.results_scrolling_left,
            ["<C-l>"] = actions.results_scrolling_right,

            ["<M-j>"] = actions.preview_scrolling_down,
            ["<M-k>"] = actions.preview_scrolling_up,
            ["<M-h>"] = actions.preview_scrolling_left,
            ["<M-l>"] = actions.preview_scrolling_right,
          },
        },

        border = true,
      },
    })
  end,
}
