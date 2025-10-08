local info = require('efmls-configs.logger').info

if vim.fn.has('nvim-0.11') == 0 then
  local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
  if not lspconfig_ok then
    local errmsg = '[efmls-configs] `nvim-lspconfig` plugin is required! Please install via your plugin manager.'
    vim.api.nvim_err_writeln(errmsg)
    return
  end
end

local M = {}

-- REMOVED
M.init = function(user_efmls_opts)
  info('[efmls-configs] init() and setup() is no longer required, check `:help efmls-configs-setup` for the new way.')
end

-- REMOVED
M.setup = function(filetypes)
  info('[efmls-configs] init() and setup() is no longer required, check `:help efmls-configs-setup` for the new way.')
end

return M
