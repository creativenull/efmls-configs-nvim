-- Metadata
-- languages: sql
-- url: https://github.com/sqlfluff/sqlfluff

local fs = require('efmls-configs.fs')

local linter = 'sqlfluff'
local command = string.format(
  '%s lint --dialect ansi --format github-annotation-native --annotation-level warning --nocolor --disable-progress-bar ${INPUT}',
  fs.executable(linter)
)

return {
  prefix = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = false,
  lintFormats = {
    '::%totice title=SQLFluff,file=%f,line=%l,col=%c,endLine=%e,endColumn=%k::%m',
    '::%tarning title=SQLFluff,file=%f,line=%l,col=%c,endLine=%e,endColumn=%k::%m',
    '::%trror title=SQLFluff,file=%f,line=%l,col=%c,endLine=%e,endColumn=%k::%m',
  },
}
