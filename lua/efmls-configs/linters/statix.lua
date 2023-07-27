local fs = require('efmls-configs.fs')
local linter = fs.executable('statix')
local command = string.format('%s check --stdin --format=errfmt', linter)
return {
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
