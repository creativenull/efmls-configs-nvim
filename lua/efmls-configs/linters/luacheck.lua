-- Metadata
-- languages: lua
-- url: https://github.com/mpeterv/luacheck

local fs = require('efmls-configs.fs')

local linter = 'luacheck'
local command = string.format('%s --codes --no-color --quiet -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: (%t%n) %m' },
  rootMarkers = { '.luacheckrc' },
}
