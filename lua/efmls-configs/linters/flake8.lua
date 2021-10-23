return {
  prefix = 'flake8',
  lintCommand = 'flake8 -',
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %t%.%# %m' },
  rootMarkers = { 'setup.cfg', 'tox.ini', '.flake8' },
}
