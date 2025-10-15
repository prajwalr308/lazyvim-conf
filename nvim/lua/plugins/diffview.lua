return {
  {
    "sindrets/diffview.nvim",
    lazy = false,
    keys = {
      {
        "<leader>go",
        "<cmd>DiffviewOpen<cr>",
        desc = "Diffview: open",
      },
      {
        "<leader>gq",
        "<cmd>DiffviewClose<cr>",
        desc = "Diffview: close",
      },
      {
        "<leader>gh",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "Diffview: file history",
      },
    },
    config = function()
      local diffview = require("diffview")
      diffview.setup({
        enhanced_diff_hl = true,
        view = {
          merge_tool = {
            layout = "diff3_mixed",
            disable_diagnostics = true,
          },
        },
      })
      local map = vim.keymap.set
      map("n", "<leader>go", "<cmd>DiffviewOpen<cr>", { desc = "Diffview: open", silent = true })
      map("n", "<leader>gq", "<cmd>DiffviewClose<cr>", { desc = "Diffview: close", silent = true })
      map("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview: file history", silent = true })
    end,
  },
}
