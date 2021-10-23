return {
  prefix = 'sorbet',
  lintCommand = 'srb typecheck --color never ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
