return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
           defaults = {
            layout_strategy = "center",
            sorting_strategy = "ascending",
            results_title = false,
            layout_config = {
              horizontal = {
                preview_cutoff = 1,
                height = { padding = 20 },
                width = { padding = 20},
              },
            },
            border = true,
            borderchars = {
              prompt  = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },

              results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },

              preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            },
            mappings = {
              i = {
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
              }
            }
          }
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
