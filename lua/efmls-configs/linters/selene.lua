-- Metadata
-- languages: lua
-- url: https://kampfkarren.github.io/selene/

local fs = require('efmls-configs.fs')

local linter = 'selene'
local command = string.format('%s --display-style quiet -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %trror%m', '%f:%l:%c: %tarning%m', '%f:%l:%c: %tote%m' },
  rootMarkers = { 'selene.toml' },
}
