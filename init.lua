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
    -- 'nvim-treesitter/nvim-treesitter', -- TODO: check for difference with omnisharp-vim
    'mbbill/undotree', -- history of undos
    'junegunn/fzf', -- fuzzy finder
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
})

--Set omnisharp
vim.g.ale_lingers = {cs = 'OmniSharp'}
vim.g.OmniSharp_selector_ui = 'fzf'
vim.g.OmniSharp_selector_findusages = 'fzf'
