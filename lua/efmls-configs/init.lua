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

---@class EfmLSConfig
-- local efmls_setup = {
--   root_dir = lspconfig.util.root_pattern('.git'),
--   init_options = {
--     documentFormatting = false,
--   },
--   settings = {
--     rootMarkers = { '.git' },
--     languages = {},
--   },
--
--   -- Plugin options
--   default_config = false,
-- }

---Insert the relevant linter/formatter into the source provided
---@param source table
---@param tools table
-- local insert_settings = function(source, tools)
--   if vim.tbl_islist(tools) then
--     for _, tool in pairs(tools) do
--       table.insert(source, tool)
--     end
--   else
--     table.insert(source, tools)
--   end
-- end

---Initalize efm-langserver LSP options for user
---@param user_efmls_opts EfmLSConfig
M.init = function(user_efmls_opts)
  -- if user_efmls_opts ~= nil or user_efmls_opts ~= {} then
  --   efmls_setup = vim.tbl_extend('force', efmls_setup, user_efmls_opts)
  -- end
end

---Setup efm-langserver settings for each filetype provided
---@param filetypes table
M.setup = function(filetypes)
  --[[
  -- Merge default config if required
  -- but priority on filetypes specified first
  if efmls_setup.default_config then
    local defaults = require('efmls-configs.defaults')

    if filetypes == nil then
      filetypes = defaults.languages()
    else
      filetypes = vim.tbl_extend('force', defaults.languages(), filetypes)
    end
  end

  if vim.tbl_isempty(filetypes) and not efmls_setup.default_config then
    vim.api.nvim_err_writeln('[efmls-configs] Provided setup() is invalid')
    return
  end

  efmls_setup.filetypes = vim.tbl_keys(filetypes)

  for ft, features in pairs(filetypes) do
    efmls_setup.settings.languages[ft] = {}

    if features.linter ~= nil then
      insert_settings(efmls_setup.settings.languages[ft], features.linter)
    end

    if features.formatter ~= nil then
      insert_settings(efmls_setup.settings.languages[ft], features.formatter)
    end
  end

  lspconfig.efm.setup(efmls_setup)
  --]]
end

return M
