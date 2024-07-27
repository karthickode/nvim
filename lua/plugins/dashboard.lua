return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { {'nvim-tree/nvim-web-devicons'}},
  config = function()
    local dash = require('dashboard')
    local catppuccin = require("catppuccin.palettes").get_palette()

    dash.setup({
      theme = 'doom',
      config = {
        header = {
          '',
          '   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
          '   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
          '   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
          '   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
          '   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
          '   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
          '',
          '                 [ Hello Karthic, Good day]                  ',
          '',
        },
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File',
            desc_hl = 'String',
            key = 'f',
            keymap = 'SPC f f',
            key_hl = 'Number',
            action = 'Telescope find_files'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Recent Files',
            desc_hl = 'String',
            key = 'r',
            keymap = 'SPC f r',
            key_hl = 'Number',
            action = 'Telescope oldfiles'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'New File',
            desc_hl = 'String',
            key = 'n',
            keymap = 'SPC c n',
            key_hl = 'Number',
            action = 'enew'
          },
        },
        footer = {
          '',
          '🚀 Welcome to Neovim!',
          '💻 Happy coding!',
        }
      },
      hide = {
        statusline = false,
        tabline = false,
        winbar = false,
      },
    })

    -- Set highlight groups to use Catppuccin colors
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = catppuccin.blue })
    vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = catppuccin.green })
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = catppuccin.mauve })
  end,
}
