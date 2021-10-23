return {
  prefix = 'cppcheck',
  lintCommand = 'cppcheck --enable=warning ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tote: %m' },
  rootMarkers = {},
}
