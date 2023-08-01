local fs = require('efmls-configs.fs')

local linter = 'eslint'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = '--no-color --format visualstudio --stdin-filename ${INPUT} --stdin'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '<text>(%l,%c): %trror %m', '<text>(%l,%c): %tarning %m' },
  lintIgnoreExitCode = true,
  rootMarkers = {
    '.eslintrc',
    '.eslintrc.cjs',
    '.eslintrc.js',
    '.eslintrc.json',
    '.eslintrc.yaml',
    '.eslintrc.yml',
    'package.json',
  },
}
