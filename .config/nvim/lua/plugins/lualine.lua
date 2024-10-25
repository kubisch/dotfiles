return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "catppuccin-mocha",
    },
    extensions = {
      "lazy",
      "nvim-tree",
    },
  },
}
