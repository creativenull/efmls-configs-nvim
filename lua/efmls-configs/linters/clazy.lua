local linter = 'clazy'
local args = {
  '--analyze',
  '--extra-arg=-Xclang',
  '--extra-arg=-analyzer-output=text',
  '--extra-arg=-fno-color-diagnostics',
  '${INPUT}',
}
local cmd = string.format('%s %s', linter, table.concat(args, ' '))

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: fatal %trror: %m', '%.%#:%l:%c: %tarning: %m' },
  rootMarkers = {},
}
