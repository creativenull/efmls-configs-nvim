-- Metadata
-- languages: docker
-- url: https://github.com/hadolint/hadolint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'hadolint'
local command = string.format('%s --no-color -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '-:%l %.%# %trror: %m', '-:%l %.%# %tarning: %m', '-:%l %.%# %tnfo: %m' },
  rootMarkers = { '.hadolint.yaml' },
}
