-- Metadata
-- languages: javascript,typescript
-- url: http://eslint.org/

local sourceText = require('efmls-configs.utils').sourceText
local concat = require('efmls-configs.utils').concat
local fs = require('efmls-configs.fs')

local linter = 'eslint'
local bin = fs.executable(linter, fs.Scope.NODE)

local format = 'visualstudio'
local lintFormats = { '%f(%l,%c): %trror %m', '%f(%l,%c): %tarning %m' }
local appendMarkers = {}
local ok, versionOutput = pcall(vim.fn.system, 'eslint --version')
local isVersion9 = ok and string.find(versionOutput, 'v9.')

if isVersion9 then
  format = 'stylish'
  lintFormats = { '%-P%f', '%\\s%#%l:%c %# %trror  %m', '%\\s%#%l:%c %# %tarning  %m', '%-Q,%-G%.%#' }
  appendMarkers = {
    'eslint.config.cjs',
    'eslint.config.mjs',
    'eslint.config.js',
  }
end

local args = '--no-color --format ' .. format .. ' --stdin-filename "${INPUT}" --stdin'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = lintFormats,
  lintIgnoreExitCode = true,
  rootMarkers = concat({
    '.eslintrc',
    '.eslintrc.cjs',
    '.eslintrc.js',
    '.eslintrc.json',
    '.eslintrc.yaml',
    '.eslintrc.yml',
    'package.json',
  }, appendMarkers),
}
