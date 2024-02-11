-- Metadata
-- languages: yaml
-- url: https://github.com/mikefarah/yq

local fs = require('efmls-configs.fs')

local formatter = 'yq'
local args = '. "${INPUT}"'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
}
