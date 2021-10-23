return {
  prefix = 'debride',
  lintCommand = 'debride ${INPUT}',
  lintStdin = true,
  lintFormat = { '%.%#:%l :: %m' },
  rootMarkers = {},
}
