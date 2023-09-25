-- This file can be loaded by calling lua require('plugins') from your init.vim


vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lua functions that many plugins use
  use "nvim-lua/plenary.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function ()
      require('Comment').setup()
    end
  }

  -- Theme
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
  }

  -- Icons
  -- use 'kyazdani42/nvim-web-devicons'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
  end,
  }

  -- Harpoon
  use "theprimeagen/harpoon"

  -- Surround
  use "tpope/vim-surround"

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Git signs plugins
  use "lewis6991/gitsigns.nvim"

  -- AutoPairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup()
    end
  }

  -- AutoTag
  use "windwp/nvim-ts-autotag"

  -- Highlight tags
  use "leafOfTree/vim-matchtag"

  -- Trouble
  use {
    "folke/trouble.nvim",
  }

  -- Markdown Preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Hexokinase
  use {'RRethy/vim-hexokinase', build = "make hexokinase"}

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
