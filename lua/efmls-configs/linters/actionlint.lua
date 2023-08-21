-- Metadata
-- languages: yaml
-- url: https://github.com/rhysd/actionlint

local fs = require('efmls-configs.fs')

local linter = 'actionlint'
local command = string.format('%s -no-color -oneline -stdin-filename ${INPUT} -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = {
    '%f:%l:%c: %.%#: SC%n:%trror:%m',
    '%f:%l:%c: %.%#: SC%n:%tarning:%m',
    '%f:%l:%c: %.%#: SC%n:%tnfo:%m',
    '%f:%l:%c: %m',
  },
  requireMarker = true,
  rootMarkers = { '.github' },
}
