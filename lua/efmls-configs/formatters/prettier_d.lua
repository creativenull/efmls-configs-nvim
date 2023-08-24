-- Metadata
-- languages: javascript,typescript,css,scss,sass,less,html,json
-- url: https://github.com/fsouza/prettierd

local fs = require('efmls-configs.fs')

local formatter = 'prettierd'
local command = string.format(
  '%s ${INPUT} ${--range-start=charStart} ${--range-end=charEnd} '
    .. '${--tab-width=tabSize} ${--use-tabs=!insertSpaces}',
  fs.executable(formatter, fs.Scope.NODE)
)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
  rootMarkers = {
    '.prettierrc',
    '.prettierrc.json',
    '.prettierrc.js',
    '.prettierrc.yml',
    '.prettierrc.yaml',
    '.prettierrc.json5',
    '.prettierrc.mjs',
    '.prettierrc.cjs',
    '.prettierrc.toml',
  },
}
