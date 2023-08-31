-- Metadata
-- languages: tex
-- url: https://www.nongnu.org/chktex/

local fs = require('efmls-configs.fs')

local linter = 'chktex'
local command = string.format('%s -q -v0', fs.executable(linter))

return {
  prefix = linter,
  lintSource = linter,
  lintStdin = true,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintFormats = { '%f:%l:%c:%n:%m' },
  lintSeverity = 2,
}
