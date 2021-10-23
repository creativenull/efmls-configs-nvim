return {
  prefix = 'clang-tidy',
  lintCommand = 'clang-tidy ${INPUT}',
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  rootMarkers = {},
}
