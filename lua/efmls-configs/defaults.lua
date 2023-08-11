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
      defaults[string.lower(lv)] = {}

      if v.linters then
        defaults[string.lower(lv)].linter = vim.tbl_map(function(l)
          return require(string.format('efmls-configs.linters.%s', l))
        end, v.linters)
      end

      if v.formatters then
        defaults[string.lower(lv)].formatter = vim.tbl_map(function(f)
          return require(string.format('efmls-configs.formatters.%s', f))
        end, v.formatters)
      end
    end
  end

  return defaults
end

return M
