return {
  prefix = 'luacheck',
  lintCommand = 'luacheck --codes --no-color --quiet -',
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: (%t%n) %m' },
  rootMarkers = { '.luacheckrc' },
}
