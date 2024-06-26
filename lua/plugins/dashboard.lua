return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          "",
          "",
          "███╗     ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
          "██╔██╗   ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
          "██║╚██╗  ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
          "██║ ╚██╗ ██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
          "██║   ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
          "╚═╝    ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        },
        shortcut = {
          { icon = ' ',
            icon_hl = 'DashboardShortcut6',
            desc = 'Projects',
            group = 'DashboardShortcut6',
            action = "lua require'telescope'.extensions.project.project{}",
            key = 'p',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut3',
            desc = 'Files',
            group = 'DashboardShortcut3',
            action = 'Telescope find_files',
            key = 'f',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut4',
            desc = 'TODO',
            group = 'DashboardShortcut4',
            action = 'TodoTelescope',
            key = 'm',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut2',
            desc = 'Github',
            group = 'DashboardShortcut2',
            action = '!open https://github.com/',
            key = 'G',
          },
          { icon = '󰒲 ',
            icon_hl = 'DashboardShortcut3',
            desc = 'LazyGit',
            group = 'DashboardShortcut3',
            action = 'LazyGit',
            key = 'g',
          },
          { icon = '󰗼 ',
            icon_hl = 'DashboardShortcut5',
            desc = 'Quit',
            group = 'DashboardShortcut5',
            action = 'q',
            key = 'q',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut1',
            desc = 'Terminal',
            group = 'DashboardShortcut1',
            action = 'Lspsaga term_toggle',
            key = 't',
          },
          {
            icon = '󰺔 ',
            icon_hl = "DashboardShortcut4",
            desc = 'File-tree',
            group = 'DashboardShortcut4',
            action = 'Neotree dir=./ toggle float',
            key = 'd',
          }
        },
        project = {
          enable = true,
          limit = 5,
        },
        mru = {
          limit = 9,
        },
        packages = { enabel = true },
        disable_mode = true,
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
