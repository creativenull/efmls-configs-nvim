-- Metadata
-- languages: javascript,typescript
-- url: http://eslint.org/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'eslint'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = '--no-color --format stylish --stdin-filename "${INPUT}" --stdin'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%-P%f', '%\\s%#%l:%c %# %trror  %m', '%\\s%#%l:%c %# %tarning  %m', '%-Q,%-G%.%#' },
  lintIgnoreExitCode = true,
  rootMarkers = {
    '.eslintrc',
    '.eslintrc.cjs',
    '.eslintrc.js',
    '.eslintrc.json',
    '.eslintrc.yaml',
    '.eslintrc.yml',
    'package.json',
    --- Eslint v9
    'eslint.config.cjs',
    'eslint.config.mjs',
    'eslint.config.js',
  },
}
