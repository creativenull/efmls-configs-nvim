return {
  prefix = 'mcs',
  lintCommand = 'mcs -unsafe --parse ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#(%l,%c): %trror %m', '%.%#(%l,%c): %tarning %m' },
  rootMarkers = {},
}
