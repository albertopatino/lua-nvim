--[[

Neovim init file
Version: 0.62.0 - 2022/06/07
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
require('plugins/nvim-telescope')

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})

--vim.api.nvim_set_keymap("n", "<Leader><Space>", "<CMD>lua require'plugins.nvim-telescope'.live_grep_in_folder()<CR>", {noremap = true, silent = true})
----require('plugins/telescope')
