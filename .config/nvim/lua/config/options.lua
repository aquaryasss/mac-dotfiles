-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Number of spaces for each indentation
opt.tabstop = 4 -- Number of spaces that a <Tab> counts for
opt.softtabstop = 4 -- Number of spaces that a <Tab> inserts
opt.smarttab = true -- Use 'shiftwidth' when inserting <Tab> at the beginning of a line
