local function mason_clangd_cmd()
  return {
    "/Users/bytedance/.local/share/nvim/mason/bin/clangd",
    "--enable-config",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
  }
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "cuda" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = mason_clangd_cmd(),
        },
      },
    },
  },
}
