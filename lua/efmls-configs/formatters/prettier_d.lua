local fs = require('efmls-configs.fs')

local formatter = 'prettierd'
local command = string.format(
  '%s ${INPUT} ${--range-start=charStart} ${--range-end=charEnd} '
    .. '${--tab-width=tabSize} ${--use-tabs=!insertSpaces}',
  fs.executable(formatter, fs.Scope.NODE)
)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
  rootMarkers = require("efmls-configs.formatters.prettier").rootMarkers,
}
