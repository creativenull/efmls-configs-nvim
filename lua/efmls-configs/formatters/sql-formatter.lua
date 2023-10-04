-- Metadata
-- languages: sql
-- url: https://github.com/sql-formatter-org/sql-formatter

local fs = require('efmls-configs.fs')
local ok, Path = pcall(require, 'plenary.path')

local args = ''
if ok then
  local cfg = Path:new(vim.fn.stdpath('config'), 'sql-formatter.json')
  if cfg:exists() and cfg:is_file() then
    args = string.format('--config %s', cfg)
  end
end

local formatter = 'sql-formatter'

local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
}
