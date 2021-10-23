return {
  prefix = 'revive',
  lintCommand = 'revive -formatter unix',
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
