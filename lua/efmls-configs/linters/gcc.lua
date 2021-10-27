return {
  prefix = 'gcc',
  lintCommand = 'gcc -Wpedantic -Wall -Wextra -fno-diagnostics-color -fsyntax-only ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tnfo: %m' },
  rootMarkers = { 'Makefile' },
}
