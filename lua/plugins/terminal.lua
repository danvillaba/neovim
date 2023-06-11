return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup({
      float_opts = {
        border = 'curved'
      }
    })
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({
      cmd = 'lazygit',
      hidden = true,
      direction = 'float'
    })

    vim.keymap.set('n',
      '<leader>gg', function()
        lazygit:toggle()
      end,
      { desc = 'LazyGit' })
    vim.keymap.set('n', [[<C-\>]], '<cmd>ToggleTerm direction=float<CR>')
    vim.keymap.set('t', [[<C-\>]], '<cmd>ToggleTerm direction=float<CR>')
  end
}
