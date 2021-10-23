return {
  prefix = 'php',
  lintCommand = 'php -l',
  lintStdin = true,
  lintFormats = { '%m in %.%# line %l' },
  rootMarkers = { 'composer.json' },
}
