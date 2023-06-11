-- return {
--   'romgrk/barbar.nvim',
--   dependencies = {
--     'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
--     'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
--   },
--   init = function() vim.g.barbar_auto_setup = false end,
--   opts = {
--   },
-- }

return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {},
  config = function(_, opts)
    require('bufferline').setup(opts)

    vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<tab>', '<cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<S-tab>', '<cmd>BufferLineCyclePrev<CR>')
    vim.keymap.set('n', '<leader>tl', '<cmd>BufferLineCloseRight<CR>')
    vim.keymap.set('n', '<leader>tp', '<cmd>BufferLineTogglePin<CR>')
    vim.keymap.set('n', '<leader>th', '<cmd>BufferLineCloseLeft<CR>')
    vim.keymap.set('n', '<leader>tml', '<cmd>BufferLineMoveNext<CR>')
    vim.keymap.set('n', '<leader>tmh', '<cmd>BufferLineMovePrev<CR>')
    vim.keymap.set('n', '<leader>tt', '<cmd>BufferLinePick<CR>')
  end
}
