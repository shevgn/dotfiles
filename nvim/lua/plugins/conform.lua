return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
				rust = { "rustfmt", lsp_format = "fallback" },
			},
		})
	end,
}
