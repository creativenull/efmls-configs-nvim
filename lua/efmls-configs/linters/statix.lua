-- Metadata
-- languages: nix
-- url: https://github.com/NerdyPepper/statix

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = fs.executable('statix')
local command = string.format('%s check --stdin --format=errfmt', linter)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintIgnoreExitCode = true,
  lintFormats = { '<stdin>>%l:%c:%t:%n:%m' },
  rootMarkers = {
    'flake.nix',
    'shell.nix',
    'default.nix',
  },
}
