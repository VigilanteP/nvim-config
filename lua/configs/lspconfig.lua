-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "ast_grep",
  "bashls",
  "checkstyle",
  "clangd",
  "cssls",
  "google_java_format",
  "html",
  "java_language_server",
  "jqls",
  "jsonls",
  "marksman",
  "nginx_language_server",
  "pylsp",
  "rust_analyzer",
  "semgrep",
  "stylelint_lsp",
  "taplo",
  "tflint",
  "tsserver",
  "vimls",
  "yamlls"
}
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
