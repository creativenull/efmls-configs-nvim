-- Metadata
-- languages: javascript,typescript,javascriptreact,typescriptreact
-- url: https://oxc.rs

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'oxlint'
local args = "--format agent '${INPUT}'"
local command = string.format('%s %s', fs.executable(linter, fs.Scope.NODE), args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintFormats = {
    '%f:%l:%c: %trror %m',
    '%f:%l:%c: %tarning %m',
  },
  rootMarkers = {
    '.oxlintrc.json',
    '.oxlintrc.jsonc',
    'oxlint.config.js',
    'oxlint.config.cjs',
    'oxlint.config.mjs',
    'oxlint.config.ts',
    'oxlint.config.mts',
    'oxlint.config.cts',
    'package.json',
  },
}
