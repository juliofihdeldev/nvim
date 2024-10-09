-- return {
--   {
--     'goolord/alpha-nvim',
--     dependencies = { 'echasnovski/mini.icons' },
--     config = function()
--       require('alpha').setup(require('alpha.themes.startify').config)
--     end,
--   },
-- }
-- :w
--
return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Set header to Coat of Arms of Haiti
      dashboard.section.header.val = {
        '                     .-"""-.',
        '                   /   _   \\',
        '                  /   (_)   \\',
        '                 /  ___^___  \\',
        '                /  |       |  \\',
        '               /   |  /^\\  |   \\',
        '              /    | <o o> |    \\',
        '             /     |  \\_/  |     \\',
        '            /   ___|       |___   \\',
        '           /   |___|\\     /|___|   \\',
        '          /         \\_____/         \\',
        '         /____________________________\\',
        "        /    L'UNION FAIT LA FORCE     \\",
        '       /                                \\',
        '      /________________________________\\',
        '     |      Liberté - Egalité           |',
        '     |           Fraternité             |',
        '     |__________________________________|',
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '  > Find file', ':cd $HOME/Projects | Telescope find_files<CR>'),
        dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
        dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
      }

      -- Send config to alpha
      alpha.setup(dashboard.opts)

      -- Disable folding on alpha buffer
      vim.cmd [[
        autocmd FileType alpha setlocal nofoldenable
    ]]
    end,
  },
}
