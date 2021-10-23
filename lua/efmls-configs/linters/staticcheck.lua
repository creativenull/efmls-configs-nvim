return {
  prefix = 'staticcheck',
  lintCommand = 'staticcheck -f text ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
