-- Metadata
-- languages: elixir
-- url: https://hexdocs.pm/mix/Mix.html

local fs = require('efmls-configs.fs')

local formatter = 'mix'
local args = 'format --stdin-filename ${INPUT} -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = {
    '.formatter.exs',
    'mix.exs',
  },
}
