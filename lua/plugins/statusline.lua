return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
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
