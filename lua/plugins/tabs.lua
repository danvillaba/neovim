return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {
    'famiu/bufdelete.nvim',
  },
  opts = {},
  config = function(_, opts)
    require('bufferline').setup(opts)

    vim.keymap.set('n', '<leader>c', '<cmd>Bdelete<CR>', { desc = 'Close tab' })
    vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<S-tab>', '<cmd>BufferLineCyclePrev<CR>')
    vim.keymap.set('n', '<leader>tl', '<cmd>BufferLineCloseRight<CR>')
    vim.keymap.set('n', '<leader>tp', '<cmd>BufferLineTogglePin<CR>')
    vim.keymap.set('n', '<leader>th', '<cmd>BufferLineCloseLeft<CR>')
    vim.keymap.set('n', '<leader>tml', '<cmd>BufferLineMoveNext<CR>')
    vim.keymap.set('n', '<leader>tmh', '<cmd>BufferLineMovePrev<CR>')
    vim.keymap.set('n', ']t', '<cmd>BufferLineMoveNext<CR>')
    vim.keymap.set('n', '[t', '<cmd>BufferLineMovePrev<CR>')
    vim.keymap.set('n', '<leader>tt', '<cmd>BufferLinePick<CR>')
  end
}
