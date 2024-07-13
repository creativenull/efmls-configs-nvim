-- Metadata
-- languages: python
-- url: https://github.com/google/yapf

local fs = require('efmls-configs.fs')

local formatter = 'yapf'
local command = string.format(
  "%s $(echo ${--useless:rowStart} ${--useless:rowEnd} | xargs -n4 -r sh -c 'echo --lines=$(($1+1))-$(($3+1))')",
  fs.executable(formatter)
)

local has_xargs = vim.fn.executable('xargs') == 1
if not has_xargs then
  command = string.format('%s', fs.executable(formatter))
end

return {
  formatCommand = command,
  formatStdin = true,
  formatCanRange = has_xargs,
  rootMarkers = { '.style.yapf', 'setup.cfg', 'pyproject.toml', 'setup.py' },
}
