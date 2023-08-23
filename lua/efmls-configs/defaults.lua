-- Defaults as defined in: doc/SUPPORTED_LIST.md
local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_ok then
  local errmsg = '[efmls-configs] `nvim-lspconfig` plugin is required! Please install via your plugin manager.'
  vim.api.nvim_err_writeln(errmsg)
  return
end

local fs = require('efmls-configs.fs')
local M = {}

---Get default languages from defaults.json
---@return table
function M.languages()
  local defaults_filepath = string.format('%s/lua/efmls-configs/defaults.json', fs.get_plugin_path())
  local fp = io.open(defaults_filepath, 'r')
  if not fp then
    vim.print('no file', defaults_filepath)
    return {}
  end

  local contents = fp:read('*all')
  fp:close()

  local data_ok, data = pcall(vim.json.decode, contents)
  if not data_ok then
    vim.print('no data')
    return {}
  end

  local defaults = {}
  for _, v in pairs(data.defaults) do
    for _, lv in pairs(v.languages) do
      local key = string.lower(lv)
      defaults[key] = {}
      local linters = {}
      local formatters = {}

      if v.linters then
        for _, linter_value in pairs(v.linters) do
          local config_path = string.format('efmls-configs.linters.%s', linter_value)
          table.insert(defaults[key], require(config_path))
        end
      end

      if v.formatters then
        for _, formatter_value in pairs(v.formatters) do
          local config_path = string.format('efmls-configs.formatters.%s', formatter_value)
          table.insert(defaults[key], require(config_path))
        end
      end
    end
  end

  return defaults
end

return M
