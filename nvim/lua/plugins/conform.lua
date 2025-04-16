return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters = {
        sleek = {
          command = "sleek",
        }
      },
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
        rust = { "rustfmt", lsp_format = "fallback" },
        html = {
          "prettier",
          "eslint",
        },
        templ = {
          "prettier",
          "eslint_d",
        },
        vue = {
          "prettier",
          "eslint_d",
        },
        svelte = {
          "prettier",
          "eslint_d",
        },
        htmx = {
          "prettier",
          "eslint_d",
        },
        typescript = {
          "prettier",
          "eslint_d",
        },
        javascript = {
          "prettier",
          "eslint_d",
        },
        json = {
          "prettier",
        },
        sql = {
          "sleek",
        }
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })
  end,
}
