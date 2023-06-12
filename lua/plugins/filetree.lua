-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { '<leader>e', '<cmd>Neotree<CR>', desc = 'File tree' }
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
  end,
  opts = {
    sources = { 'filesystem', 'git_status' },
    source_selector = {
      winbar = true,
      content_layout = 'center',
      sources = {
        { source = 'filesystem', display_name = '' },
        { source = 'git_status', display_name = '󰊢 ' },
      }
    },
    window = {
      mappings = {
        ['<space>'] = false,
        ['['] = 'prev_source',
        [']'] = 'next_source',
      }
    }
  },
}
