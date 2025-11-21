return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nsidorenco/neotest-vstest',
  },
  config = function()
    require("neotest").setup({
      log_level = vim.log.levels.DEBUG,
      adapters = {
        require("neotest-vstest")({
          -- Path to dotnet sdk path.
          -- Used in cases where the sdk path cannot be auto discovered.
          sdk_path = "/home/abollinger/.dotnet/"
        })
      }
    })

    -- Keybindings
    vim.keymap.set('n', '<leader>tt', function() require("neotest").run.run() end, { desc = '[T]est Run Nearest' })
    vim.keymap.set('n', '<leader>tf', function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = '[T]est Run [F]ile' })
    vim.keymap.set('n', '<leader>ts', function() require("neotest").summary.toggle() end, { desc = '[T]est [S]ummary' })
    vim.keymap.set('n', '<leader>to', function() require("neotest").output.open({ enter = true }) end, { desc = '[T]est [O]utput' })
    vim.keymap.set('n', '<leader>tp', function() require("neotest").output_panel.toggle() end, { desc = '[T]est Output [P]anel' })
    vim.keymap.set('n', '<leader>tl', function() vim.cmd('edit ' .. vim.fn.stdpath('log') .. '/neotest.log') end, { desc = '[T]est [L]og File' })
  end
}
