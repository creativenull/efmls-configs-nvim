local fs = require('efmls-configs.fs')

local linter = 'xo'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--reporter visualstudio --stdin'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '<text>(%l,%c): %trror %m', '<text>(%l,%c): %tarning %m' },
  rootMarkers = {
    '.xo-config',
    '.xo-config.json',
    '.xo-config.js',
    '.xo.config.js',
    '.xo-config.cjs',
    '.xo.config.cjs',
    'package.json',
  },
}
