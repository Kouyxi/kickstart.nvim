return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      direction = 'horizontal',
      size = 15,
      float_opts = {
        border = 'curved',
        width = 130,
        height = 20,
      },
      winbar = {
        enabled = false,
      },
    }
  end,
}
