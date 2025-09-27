-- Diagnostics

vim.keymap.set("n", "]e", function()
  vim.diagnostic.jump({ severity = vim.diagnostic.severity.ERROR, count = 1 })
end,
{desc = "Jump to the next error in the current buffer"})

vim.keymap.set("n", "[e", function()
  vim.diagnostic.jump({ severity = vim.diagnostic.severity.ERROR, count = -1 })
end,
{desc = "Jump to the prev error in the current buffer"})

vim.keymap.set("n", "]w", function()
  vim.diagnostic.jump({ severity = vim.diagnostic.severity.WARN, count = 1 })
end,
{desc = "Jump to the next warning in the current buffer"})

vim.keymap.set("n", "[w", function()
  vim.diagnostic.jump({ severity = vim.diagnostic.severity.WARN, count = -1 })
end,
{desc = "Jump to the prev warning in the current buffer"})

-- Clipboard

vim.cmd("cabbrev wb w! /tmp/nvim-clipboard") -- copy [w]rite [b]lock
vim.cmd("cabbrev rb r /tmp/nvim-clipboard") -- paste [r]ead [b]lock
