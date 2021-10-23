return {
  prefix = 'pylint',
  lintCommand = 'pylint --score=no ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %t%.%#: %m' },
  rootMarkers = {},
}
