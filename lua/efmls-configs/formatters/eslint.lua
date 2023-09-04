-- Metadata
-- languages: javascript,typescript
-- url: https://eslint.org

local fs = require('efmls-configs.fs')

local formatter = 'eslint'
local args = "--fix '${INPUT}'"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = false,
}
