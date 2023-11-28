-- Metadata
-- languages: python
-- url: https://github.com/ambv/black

local fs = require('efmls-configs.fs')

local formatter = 'black'
local command = string.format(
  "%s --no-color -q $(echo ${--useless:rowStart} ${--useless:rowEnd} | xargs -n4 -r sh -c 'echo --line-ranges=$(($1+1))-$(($3+1))') -",
  fs.executable(formatter)
)

-- TODO: add range formatting for windows without relying on `xargs`
local is_windows = vim.fn.has('win32') == 1
if is_windows then
  command = string.format('%s --no-color -q -', fs.executable(formatter))
end

return {
  formatCanRange = not is_windows,
  formatCommand = command,
  formatStdin = true,
}
