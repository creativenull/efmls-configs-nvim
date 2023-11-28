-- Metadata
-- languages: python
-- url: https://github.com/ambv/black

local fs = require('efmls-configs.fs')

local formatter = 'black'

local command = string.format(
  "%s --no-color -q $(echo ${--useless:rowStart} ${--useless:rowEnd} | xargs -n4 -r sh -c 'echo --line-ranges=$(($1+1))-$(($3+1))') -",
  fs.executable(formatter)
)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
}
