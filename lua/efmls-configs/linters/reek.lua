-- Metadata
-- languages: ruby
-- url: https://github.com/troessner/reek

local fs = require('efmls-configs.fs')

-- TODO: Not properly implemented yet
local linter = 'reek'
local args = 'exec reek --format txt --force-exclusion --stdin-filename ${INPUT}'
local command = string.format('%s %s', fs.executable('bundle', fs.Scope.BUNDLE), args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %t: %m' },
  rootMarkers = {},
}
