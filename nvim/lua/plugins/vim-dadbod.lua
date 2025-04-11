return {
  {
    'tpope/vim-dadbod',
    dependencies = {
      { 'kristijanhusak/vim-dadbod-ui',         lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    keys = {
      { "<leader>db", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_win_position = "right"
    end,
  },
  {
    'saghen/blink.cmp',
    ft = { "sql" },
    opts = {
      sources = {
        default = {},
        per_filetype = {
          sql = { 'snippets', 'lsp', 'path', 'dadbod', 'buffer' },
        },
        providers = {
          dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
        },
      },
      keymap = {
        ["<D-c>"] = { "show" },
        ["<S-CR>"] = { "hide" },
        ["<CR>"] = { "select_and_accept", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
      },
    },
  }
}
