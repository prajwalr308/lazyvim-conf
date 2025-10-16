return {
  {
    "dracula/vim",
    name = "dracula",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        gitsigns = true,
        telescope = true,
        treesitter = true,
        notify = false,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      sidebars = "dark",
      dim_inactive = true,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "darker",
      code_style = {
        comments = "italic",
        keywords = "bold",
      },
      diagnostics = {
        darker = true,
        undercurl = true,
        background = false,
      },
    },
    config = function(_, opts)
      require("onedark").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
