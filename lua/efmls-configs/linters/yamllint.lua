-- Metadata
-- languages: yaml
-- url: https://yamllint.readthedocs.io/

local fs = require('efmls-configs.fs')

local linter = 'yamllint'
local args = '-f parsable -'
local command = string.format('%s %s', fs.executable(linter), args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
}
