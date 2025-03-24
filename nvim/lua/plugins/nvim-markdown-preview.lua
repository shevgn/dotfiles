return {
	{
		"shevgn/nvim-markdown-preview",
		cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		config = function()
			require("markdown-preview.commands")
		end,
	},
}
