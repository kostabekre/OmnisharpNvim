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
    --
    -- C# related
    --
    -- the main C# plugin
    'OmniSharp/omnisharp-vim', 
    -- Checks code for errors
    'dense-analysis/ale', 
    -- fuzzy finder
    'junegunn/fzf', 
    'junegunn/fzf.vim',
    -- autocompletion source engine
    'ncm2/ncm2',
    'roxma/nvim-yarp',
    'ncm2/ncm2-bufword',
    'ncm2/ncm2-path',
    'ncm2/ncm2-ultisnips',
    -- snippet support
    'SirVer/ultisnips',
    -- async complier
    'tpope/vim-dispatch', 
    {'Shougo/vimproc.vim', build = "make"},
    -- Mappings, code-actions available flag and statusline integration 
    -- TODO analyze
    -- 'nickspoons/vim-sharpenup',
    -- Statusline
    'itchyny/lightline.vim',
    'shinchu/lightline-gruvbox.vim',
    'maximbaz/lightline-ale',

    -- 'nvim-treesitter/nvim-treesitter', 
    -- omnisharp's hilglight do the same job, even a little better
    -- hilglight vor lua and vim I use in other neovim config.
    -- history of undos
    'mbbill/undotree', 
    --gcc comment for C#
    'tpope/vim-commentary', 
    'windwp/nvim-autopairs', 
    'kylechui/nvim-surround',

    -- git wrapper
    'tpope/vim-fugitive', 

    --colorsheme
    '4513ECHO/vim-colors-hatsunemiku', 
    -- Hints for shortcuts
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end,
    }
})
