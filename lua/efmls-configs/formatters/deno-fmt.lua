-- Metadata
-- languages: javascript,typescript
-- url: https://docs.deno.com/runtime/manual/tools/formatter

local fs = require('efmls-configs.fs')

local formatter = 'deno'
local args = 'fmt - --ext ${FILEEXT}'

local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
