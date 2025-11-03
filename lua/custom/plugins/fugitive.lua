return {
  {
    'tpope/vim-fugitive',
    event = 'VimEnter',
    config = function()
      -- Optional: Add keymaps for common fugitive commands
      local keymap = vim.keymap.set
      local opts = { noremap = true, silent = true }

      -- Open Git status window
      keymap('n', '<leader>gs', ':Git<CR>', { desc = 'Git Status' })

      -- Git diff
      keymap('n', '<leader>gd', ':Gdiff<CR>', { desc = 'Git Diff' })

      -- Git log
      keymap('n', '<leader>gl', ':Git log<CR>', { desc = 'Git Log' })

      -- Git blame
      keymap('n', '<leader>gb', ':Git blame<CR>', { desc = 'Git Blame' })

      -- Git commit
      keymap('n', '<leader>gc', ':Git commit<CR>', { desc = 'Git Commit' })

      -- Git push
      keymap('n', '<leader>gp', ':Git push<CR>', { desc = 'Git Push' })

      -- Git pull
      keymap('n', '<leader>gu', ':Git pull<CR>', { desc = 'Git Pull' })
    end,
  },
}
