-- Metadata
-- languages: vim
-- url: https://github.com/ValeLint/vale

local fs = require('efmls-configs.fs')

local linter = 'vint'
local args = '--no-color --warning --format'
local format = '{file_path}:{line_number}:{column_number}: {severity}: {description} (see {reference})'
local command = string.format('%s %s %q', fs.executable(linter), args, format)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m' },
  rootMarkers = { '.vintrc.yaml', '.vintrc.yml', '.vintrc' },
}
