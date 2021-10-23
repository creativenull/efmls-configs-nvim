return {
  prefix = 'rubocop',
  lintCommand = 'rubocop --lint --format emacs --stdin ${INPUT}',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %t: %m' },
  rootMarkers = {},
}
