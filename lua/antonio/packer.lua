-- This file can be loaded by calling lua require('plugins') from your init.vim


vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lua functions that many plugins use
  use"nvim-lua/plenary.nvim"

  -- telescope
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- theme
  use {
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  }

  -- highlight
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  }

-- harpoon
use "theprimeagen/harpoon"


use "tpope/vim-surround"

-- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  --git signs plugins
  use "lewis6991/gitsigns.nvim"

  -- autoTag
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup()
    end
  }

  use "windwp/nvim-ts-autotag"

  -- Highlight tags
  use "leafOfTree/vim-matchtag"


  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = "v2.x",
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"saadparwaiz1/cmp_luasnip"},
      {'hrsh7th/cmp-nvim-lsp'},
      {"hrsh7th/cmp-nvim-lua"},

      --Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'}
    }
  }
end)
