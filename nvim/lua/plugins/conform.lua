return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
				rust = { "rustfmt", lsp_format = "fallback" },
				vue = { "prettier", "eslint_d" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
