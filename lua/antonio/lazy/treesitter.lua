return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "gitignore", "go", "vue", "vimdoc", "json",
        "javascript",  "typescript", "python", "bash","c", "cpp","lua", "css", "html"},
        indent = {enable = false},
        autotag = {
          enable = true,
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                scope_incremental = '<CR>',
                node_incremental = '<TAB>',
                node_decremental = '<S-TAB>',
            },
        }
      })
    end
  }
