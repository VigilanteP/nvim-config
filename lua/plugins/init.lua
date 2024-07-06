return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "prettierd",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- java stuff
        "checkstyle", -- checkstyle (used in some chewy projects)
        "gradle-language-server", -- gradle lsp

        -- json stuff
        "fixjson", -- json formatted
        "json-lsp", -- json lsp
        "jsonlint", -- json linter

        -- ast-grep covers the majority of formats I use but we can pick and choose where we want to use it
        -- Provides LSP/linter/formatter for all of c,cpp,rust,go,c#,java,js,jsx,tsx,html,css,kotlin,dart,lua
        "ast-grep",

        -- Shell scripts
        "bash-language-server", -- bash lsp
        "shfmt", -- shell script formatter

        -- Git
        "gitleaks", -- linter to prevent comitting secrets
        "gitlint", -- commit linter

        --SQL 
        "sqlfmt", -- sql formatter
        "sqlls", -- sql lsp

        -- VIM related
        "vim-language-server", -- lsp for vim scripts
        "vint", -- linter for vim scripts

        -- Configuration/Static-Text formats
        ---- Docker
        "docker-compose-language-service", -- docker compose lsp
        "dockerfile-language-server", -- dockerfile lsp
        "hadolint", -- docker lint

        --- Markdown
        "marksman",

        --- Nginx
        "nginx-language-server",

        --- Toml
        "taplo",

        --- Terraform
        "tflint",

        --- XML
        "xmlformatter",

        --- YAML
        "yaml-language-server", -- yaml lsp
        "yamlfmt" -- yaml formatting
      },
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "python",
        "toml",
        "json",
        "java",
        "bash",
        "fish"
      },
      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
      },
  	},
  },
}
