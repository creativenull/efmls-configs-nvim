-- Metadata
-- languages: proto
-- url: https://github.com/yoheimuta/protolint

local fs = require('efmls-configs.fs')

local formatter = 'protolint'
local command = string.format("%s lint -fix '${INPUT}'", fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
