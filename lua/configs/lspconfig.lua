-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
	"html",
	"cssls",
	"tsserver",
	"clangd",
	"rust_analyzer",
	"yamlls",
	"taplo",
	"tflint",
	"vimls",
	"ast_grep",
	"nginx_language_server",
	"marksman",
	"stylelint_lsp",
	"jsonls",
	"jqls",
	"bashls",
  "pylsp"
}
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
