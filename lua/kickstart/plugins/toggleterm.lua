return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',

    config = function()
      require('toggleterm').setup {
        size = 70,
        open_mapping = [[<c-\>]],
        hide_numbers = true, -- hide the number column in toggleterm buffers
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = '2', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        persist_size = true,
        direction = 'vertical',
        -- make this terminial pretty
        shell = 'zsh',
        float_opts = {
          border = 'single',
          width = 60,
          height = 20,
          winblend = 3,
          highlights = {
            border = 'Normal',
            background = 'Normal',
          },
        },
      }
    end,
  },
}
