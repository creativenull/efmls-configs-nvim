local M = {}

M.error = function(msg)
  vim.api.nvim_echo({ {msg, 'ErrorMsg'} }, true, {})
end

M.info = function(msg)
  vim.api.nvim_echo({ {msg, 'WarningMsg'} }, true, {})
end

return M
