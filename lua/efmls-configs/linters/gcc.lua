return {
  prefix = 'gcc',
  lintCommand = 'gcc -Wall -fno-diagnostics-color ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tnfo: %m' },
  rootMarkers = {},
}
