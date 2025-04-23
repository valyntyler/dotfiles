vim.cmd("colorscheme gruvbox")
vim.g.mapleader = ' '

vim.o.nu = true
vim.o.rnu = true

vim.o.tabstop = 2                     -- number of columns occupied by a tab
vim.o.softtabstop = 2                 -- see multiple spaces as tabstops so <BS> does the right thing
vim.o.expandtab = true                -- converts tabs to white space
vim.o.shiftwidth = 2                  -- width for autoindents

vim.o.showmatch = true                -- show matching
vim.o.ignorecase = true               -- case insensitive
vim.o.hlsearch = true                 -- highlight search
vim.o.incsearch = true                -- incremental search

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { ".git" },
  },

  pickers = {
    find_files = {
      hidden = true
    },
  },
}

-- treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
