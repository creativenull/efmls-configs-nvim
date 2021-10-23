return {
  prefix = 'cpplint',
  lintCommand = 'cpplint ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
