vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.termguicolors = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldmethod = "indent"

require("config.diagnostic")
require("config.lazy")
require("config.keymaps")

require("themery").setThemeByName("vague", true)

--vim.cmd("highlight LineNr guibg=#202028")

