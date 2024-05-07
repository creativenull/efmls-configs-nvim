-- Metadata
-- languages: sql
-- url: https://github.com/sql-formatter-org/sql-formatter

local fs = require('efmls-configs.fs')

local formatter = 'sqlfluff'
local command = string.format(
  '%s format --dialect ansi --nocolor --ignore ${INPUT}',
  fs.executable(formatter, fs.Scope.NODE)
)

return {
  formatCommand = command,
  formatStdin = false,
}
