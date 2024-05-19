-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon file',
      },
      {
        '<leader>h',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon quick menu',
      },
      {
        '<C-j>',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'Harpoon to file 1',
      },
      {
        '<C-k>',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'Harpoon to file 2',
      },
      {
        '<C-l>',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'Harpoon to file 3',
      },
      {
        '<C-;>',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'Harpoon to file 4',
      },
      {
        "<C-'>",
        function()
          require('harpoon'):list():select(5)
        end,
        desc = 'Harpoon to file 5',
      },
    },
  },
}
