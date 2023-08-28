-- Metadata
-- languages: java
-- url: https://github.com/google/google-java-format

local fs = require('efmls-configs.fs')

local formatter = 'google-java-format'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
