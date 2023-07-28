local fs = require('efmls-configs.fs')
local command = fs.executable('fish')
local lintCommand = string.format('%s --no-execute ${INPUT}', command)

return {
  lintCommand = lintCommand,
  lintIgnoreExitCode = true,
  lintFormats = { '%.%#(line %l): %m' },
}
