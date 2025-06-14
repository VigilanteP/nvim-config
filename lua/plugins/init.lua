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
        "deno",
        "prettierd",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- java stuff
        "checkstyle", -- checkstyle (used in some chewy projects)
        "gradle-language-server", -- gradle lsp
        "google-java-format",

        -- json stuff
        "fixjson", -- json formatted
        "json-lsp", -- json lsp
        "jqls",

        -- python stuff
        "black",
        "pylsp",

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
        "dprint", -- dockerfile formatter

        --- Markdown
        "marksman",

        --- Nginx
        "nginx-language-server",

        --- Toml
        "taplo",

        --- Terraform
        "terraform",

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
        "fish",
        "terraform",
        "dockerfile",
      },
      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
      },
  	},
  },
  {
    "mustache/vim-mustache-handlebars",
    ft = { "handlebars", "mustache", "html.mustache" },
    init = function()
      -- Force Neovim to treat *.mustache files as 'handlebars'
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = "*.mustache",
        callback = function()
          vim.bo.filetype = "handlebars"
        end,
      })
    end,
  },
}
