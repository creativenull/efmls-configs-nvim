return {
  prefix = 'dmd',
  lintCommand = 'dmd -color=off -vcolumns -o- -wi -c -',
  lintStdin = true,
  lintFormats = { '%.%#(%l,%c): %trror: %m', '%.%#(%l,%c): %tarning: %m' },
  rootMarkers = {},
}
