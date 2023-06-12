return {
  'tpope/vim-sleuth',
  { 'windwp/nvim-autopairs', opts = {} },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'folke/which-key.nvim',  opts = {} },
  {
    'navarasu/onedark.nvim',
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      identLine_enabled = 1,
      buftype_exclude = { "terminal" },
      show_trailing_blankline_indent = false,
      use_treesitter = true,
      show_first_indent_level = false,
      show_current_context = true,
      show_current_context_start = true,
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { '<leader>ft', '<cmd>TodoTelescope<CR>', desc = 'Find todos' }
    },
    opts = {}
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {}
  }
}
