return {
  prefix = 'vulture',
  lintCommand = 'vulture ${INPUT}',
  lintStdin = false,
  lintFormats = { '%f:%l: %m' },
  rootMarkers = {},
}
