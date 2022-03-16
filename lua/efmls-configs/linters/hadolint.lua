local fs = require('efmls-configs.fs')

local linter = 'hadolint'
local command = string.format('%s --no-color -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '-:%l %.%# %trror: %m', '-:%l %.%# %tarning: %m', '-:%l %.%# %tnfo: %m' },
  rootMarkers = { '.hadolint.yaml' },
}
