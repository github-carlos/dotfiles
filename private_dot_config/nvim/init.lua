-- leader
vim.g.mapleader = " "

-- Instaling Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("personal")

local cfg = {
  hint_prefix = "🤔💭 "
}  -- add your config here
require "lsp_signature".setup(cfg)

