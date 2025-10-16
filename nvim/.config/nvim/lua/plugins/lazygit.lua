return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
      "LazyGitLog",
      "LazyGitLogCurrentFile",
    },
    keys = {
      {
        "<leader>gg",
        function()
          if vim.fn.executable("lazygit") == 0 then
            vim.notify("lazygit executable not found", vim.log.levels.ERROR)
            return
          end
          vim.cmd("LazyGit")
        end,
        desc = "LazyGit",
      },
      {
        "<leader>gG",
        function()
          if vim.fn.executable("lazygit") == 0 then
            vim.notify("lazygit executable not found", vim.log.levels.ERROR)
            return
          end
          vim.cmd("LazyGitCurrentFile")
        end,
        desc = "LazyGit (Current File)",
      },
      {
        "<leader>gH",
        function()
          if vim.fn.executable("lazygit") == 0 then
            vim.notify("lazygit executable not found", vim.log.levels.ERROR)
            return
          end
          vim.cmd("LazyGitFilterCurrentFile")
        end,
        desc = "LazyGit: File History",
      },
    },
  },
}
