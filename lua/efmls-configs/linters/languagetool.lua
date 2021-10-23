return {
  prefix = 'languagetool',
  lintCommand = 'languagetool -',
  lintStdin = true,
  lintFormats = { '%.%#Line %l, column %c, Message: %m' },
  rootMarkers = {},
}
