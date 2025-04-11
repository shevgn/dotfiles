require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("plugins.neotree"),
  require("plugins.colorscheme"),
  require("plugins.lazygit"),
  require("plugins.lualine"),
  require("plugins.alpha"),
  require("plugins.indent-blankline"),
  require("plugins.bufferline"),
  require("plugins.nvim-autopairs"),
  require("plugins.copilot"),
  require("plugins.telescope"),
  require("plugins.autocompletion"),
  -- require("plugins.autoformatting"),
  require("plugins.lsp"),
  require("plugins.treesitter"),
  require("plugins.nvim-colorizer"),
  require("plugins.vim-surround"),
  require("plugins.todo-comments"),
  require("plugins.nvim-markdown-preview"),
  require("plugins.conform"),
  require("plugins.undotree"),
  require("plugins.trouble"),
  require("plugins.vim-dadbod"),
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.html",
  callback = function()
    local first_line = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]
    if first_line:lower() == "<!doctype html>" then
      vim.api.nvim_buf_set_lines(0, 0, 1, false, { "<!DOCTYPE html>" })
      vim.cmd("write")
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "php", "sql", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})
