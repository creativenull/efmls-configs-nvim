-- Metadata
-- languages: javascript,typescript
-- url: https://github.com/mantoni/eslint_d.js

local fs = require('efmls-configs.fs')

local linter = 'eslint_d'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = '--no-color --format visualstudio --stdin-filename "${INPUT}" --stdin'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%f(%l,%c): %trror %m', '%f(%l,%c): %tarning %m' },
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
