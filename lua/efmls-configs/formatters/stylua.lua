-- Metadata
-- languages: lua
-- url: https://github.com/johnnymorganz/stylua

local fs = require('efmls-configs.fs')

local formatter = 'stylua'
local command = string.format(
  "%s --color Never ${--range-start:charStart} ${--range-end:charEnd} --stdin-filepath '${INPUT}' -",
  fs.executable(formatter)
)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { 'stylua.toml', '.stylua.toml' },
}
