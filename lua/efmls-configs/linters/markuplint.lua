-- Metadata
-- languages: HTML
-- url: https://markuplint.dev/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'markuplint'
local args = '--no-color --format Github ${INPUT}'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.NODE), args)

return {
	prefix = linter,
	lintSource = sourceText(linter),
	lintCommand = command,
	lintStdin = true,
	lintFormats = {
    '::%trror file=%.%#,line=%l,col=%c::%m',
    '::%tarning file=%.%#,line=%l,col=%c::%m',
  },
	rootMarkers = { '.markuplintrc' },
}
