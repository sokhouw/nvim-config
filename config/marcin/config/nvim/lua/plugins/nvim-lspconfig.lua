return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig").lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            version = "LuaJIT",
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files (but it is slow)
            library = vim.api.nvim_get_runtime_file("", true),
            -- fast but less comprehensive
            -- checkThirdParty = false,
          },
          -- Do not send telemetry data
          telemetry = {
            enable = false,
          },
        },
      },
    })
    require("lspconfig").erlangls.setup({
      capabilities = capabilities,
      cmd = { "erlang_ls" },
    })
  end,
}
