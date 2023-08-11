-- Metadata
-- languages: javascript,typescript
-- url: https://github.com/mantoni/eslint_d.js

local fs = require('efmls-configs.fs')

local formatter = 'eslint_d'
local args = '--fix-to-stdout --stdin-filename ${INPUT} --stdin'
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
}
