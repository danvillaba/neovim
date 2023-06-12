return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'RRethy/nvim-base16' },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = '|',
      globalstatus = true,
      theme = 'base16',
      section_separators = { left = '', right = '' },
    },
  },
}
