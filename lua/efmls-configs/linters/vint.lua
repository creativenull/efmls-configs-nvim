local format = '{file_path}:{line_number}:{column_number}: {severity}: {description} (see {reference})'
local cmd = string.format('vint --no-color --warning --format %q -', format)

return {
  prefix = 'vint',
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m' },
  rootMarkers = { '.vintrc.yaml', '.vintrc.yml', '.vintrc' },
}
