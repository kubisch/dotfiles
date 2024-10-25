return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                                                 ",
      "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗    ██████╗ ████████╗██╗    ██╗",
      "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║    ██╔══██╗╚══██╔══╝██║    ██║",
      "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║    ██████╔╝   ██║   ██║ █╗ ██║",
      "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║    ██╔══██╗   ██║   ██║███╗██║",
      "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝   ██║   ╚███╔███╔╝",
      "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝    ╚═╝    ╚══╝╚══╝ ",
    }

    dashboard.section.header.type = "text"
    dashboard.section.header.opts = {
      position = "center",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "Find String", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", "Quit Neovim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
