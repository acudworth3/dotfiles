return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {

    --    { '<leader>th', '<cmd>ToggleTerm size=20 direction=horizontal<cr>', desc = 'Open a horizontal terminal' },
    --    { '<leader>tv', '<cmd>ToggleTerm size=20 direction=vertical<cr>', desc = 'Open a vertical terminal' },
  },
  opts = {
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = 'curved',
      winblend = 0,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
  },
}
