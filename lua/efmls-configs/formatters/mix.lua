-- Metadata
-- languages: elixir
-- url: https://github.com/astral-sh/ruff

local fs = require('efmls-configs.fs')

local formatter = 'mix'
local args = 'format --stdin-filename $FILENAME -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = {
    '.formatter.exs',
    'mix.exs',
  },
}
