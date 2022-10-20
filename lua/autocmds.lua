-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost",
  { callback = function() vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 200 }) end })

-- Enable spell checking for certain file types
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, { pattern = { "*.txt", "*.md" },
  command = "setlocal spell spelllang=en_us,ru" })
