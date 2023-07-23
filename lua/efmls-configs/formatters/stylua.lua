local fs = require('efmls-configs.fs')

local formatter = 'stylua'
local command = string.format(
  '%s ${--indent-width:tabSize} ${--range-start:charStart} '
    .. '${--range-end:charEnd} --color Never -',
  fs.executable(formatter)
)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { 'stylua.toml', '.stylua.toml' },
}
