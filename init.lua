require("main_folder")

-- Install lazy if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'OmniSharp/omnisharp-vim', -- For C# and unity
    'dense-analysis/ale', -- Checks code for errors
    --'nvim-treesitter/nvim-treesitter',
    'mbbill/undotree', -- history of undos
    {'junegunn/fzf', build= "fzf#install"}, -- fuzzy finder
    'junegunn/fzf.vim',
    'terrortylor/nvim-comment', --comment
    'windwp/nvim-autopairs', 
    'kylechui/nvim-surround',
    '4513ECHO/vim-colors-hatsunemiku', -- color 
    'tpope/vim-fugitive', -- git wrapper
    {'neoclide/coc.nvim', branch="master", build = "yarn install --frozen-lockfile"}, -- autocompletion
    'SirVer/ultisnips',
    'honza/vim-snippets',
    {'Shougo/vimproc.vim', build = "make"},
    'tpope/vim-dispatch', -- async complier
    -- 'Eandrju/cellular-automaton.nvim', -- just for fun
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }
})
