-- Metadata
-- languages: typescript, javascript, json, jsonc
-- url: https://biomejs.dev/

local fs = require('efmls-configs.fs')

local formatter = 'biome'
local args = "check --apply --stdin-file-path '${INPUT}'"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { 'rome.json', 'biome.json' },
}
