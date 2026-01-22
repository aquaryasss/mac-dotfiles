-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Dynamic Mode Colors: Pink for Normal, Mauve for Insert
local transition_group = vim.api.nvim_create_augroup("DynamicModeColors", { clear = true })

vim.api.nvim_create_autocmd("ModeChanged", {
  group = transition_group,
  pattern = "*:[iR]*", -- Entering Insert or Replace mode
  callback = function()
    vim.cmd("highlight StatusLine guifg=#cba6f7") -- Mauve
    -- If using Lualine, you can also trigger a refresh here
  end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
  group = transition_group,
  pattern = "[iR]*:*", -- Leaving Insert or Replace mode (back to Normal)
  callback = function()
    vim.cmd("highlight StatusLine guifg=#f5c2e7") -- Pink
  end,
})
