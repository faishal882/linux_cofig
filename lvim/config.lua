-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
require("fmlvim.lualine")
require("fmlvim.keymappings")
require("fmlvim.nvimdap")

-- codeium AI Copilot plugin
lvim.plugins = {
  'Exafunction/codeium.vim',
  event = 'BufEnter'
}
-- {
--  'Exafunction/codeium.vim',
--  config = function ()
--  -- Change '<C-g>' here to any keycode you like.
--    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
--  vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
--    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
--    --  vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
--  end
--}

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.format_on_save.enabled = true
vim.opt.cmdheight = 2

vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 1


vim.g.clipboard = {
  name = 'myClipboard',
  copy = {
    ["+"] = { 'tmux', 'load-buffer', '-' },
    ["*"] = { 'tmux', 'load-buffer', '-' },
  },
  paste = {
    ["+"] = { 'tmux', 'save-buffer', '-' },
    ["*"] = { 'tmux', 'save-buffer', '-' },
  },
  cache_enabled = true,
}
