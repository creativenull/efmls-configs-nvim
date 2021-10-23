return {
  prefix = 'shellcheck',
  lintCommand = 'shellcheck --color=never --format=gcc -',
  lintStdin = true,
  lintFormats = { '-:%l:%c: %trror: %m', '-:%l:%c: %tarning: %m', '-:%l:%c: %tote: %m' },
  rootMarkers = {},
}
