--type conform.options
local options = {
	lsp_fallback = true,

	formatters_by_ft = {

    -- Devops
    dockerfile = { "dprint" },
    terraform = { "terraform" },

    -- Web
		css = { "prettierd" },
		html = { "prettierd" },
    javascript ={ "prettierd" },
    json = { "fixjson" },

    -- Scripting
		lua = { "stylua" },
    python = { "black" },
		sh = { "shfmt" },
    sql = { "sqlfmt" },

    -- c-like
    c = { "clang-format" },
    cpp = { "clang-format" },
  	java = { "google-java-format" },

    -- Config / Documentation
    markdown = { "markdownlint" },
    toml = { "taplo" },
    xml = { "xmlformat" },
    yaml = { "yamlfmt" },
	},

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
}

require("conform").setup(options)

