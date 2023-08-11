require('efmls-configs.logger').info(
  '[efmls-configs] init() and setup() is no longer required, check `:help efmls-configs-setup` for the new way.'
)

local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_ok then
  local errmsg = '[efmls-configs] `nvim-lspconfig` plugin is required! Please install via your plugin manager.'
  vim.api.nvim_err_writeln(errmsg)
  return
end

local M = {}

M.init = function(user_efmls_opts)
  -- DEPRECATED
end

M.setup = function(filetypes)
  -- DEPRECATED
end

return M
