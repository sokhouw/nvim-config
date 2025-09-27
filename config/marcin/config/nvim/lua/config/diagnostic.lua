vim.diagnostic.config({
  bufferline = true,
  float = true,
  jump = {
    float = false,
    wrap = true,
  },
  severity_sort = true,
  signs = {
    text = { " ", " ", " ", " " },
  },
  underline = true,
  update_in_insert = false,
  virtual_lines = false,
  virtual_text = {
    prefix = "●",
    source = "if_many",
    spacing = 4
  },
})
