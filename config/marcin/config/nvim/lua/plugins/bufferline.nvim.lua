return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      mode = "buffers",
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      color_icons = true,
      separator_style = "slant", -- "slant" | "thick" | "thin" | { 'any', 'any' }
      indicator = {
        icon = "▎",
        style = "icon", -- "icon" | "underline" | "none"
      },
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
    }
  }
}
