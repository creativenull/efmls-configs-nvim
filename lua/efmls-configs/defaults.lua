-- Defaults as defined in: supported-linters-and-formatters.md
return {
  ['css'] = {
    linter = require('diagnosticls-configs.linters.stylelint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['go'] = { linter = require('diagnosticls-configs.linters.golangci_lint') },
  ['html'] = { linter = require('diagnosticls-configs.linters.stylelint') },
  ['javascript'] = {
    linter = require('diagnosticls-configs.linters.eslint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['javascriptreact'] = {
    linter = require('diagnosticls-configs.linters.eslint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['less'] = {
    linter = require('diagnosticls-configs.linters.stylelint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['lua'] = {
    linter = require('diagnosticls-configs.linters.luacheck'),
    formatter = require('diagnosticls-configs.formatters.stylua'),
  },
  ['php'] = {
    linter = require('diagnosticls-configs.linters.phpcs'),
    formatter = require('diagnosticls-configs.formatters.phpcbf'),
  },
  ['python'] = {
    linter = require('diagnosticls-configs.linters.flake8'),
    formatter = require('diagnosticls-configs.formatters.autopep8'),
  },
  ['ruby'] = { linter = require('diagnosticls-configs.linters.reek') },
  ['sass'] = {
    linter = require('diagnosticls-configs.linters.stylelint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['scss'] = {
    linter = require('diagnosticls-configs.linters.stylelint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['swift'] = { linter = require('diagnosticls-configs.linters.swiftlint') },
  ['typescript'] = {
    linter = require('diagnosticls-configs.linters.eslint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['typescriptreact'] = {
    linter = require('diagnosticls-configs.linters.eslint'),
    formatter = require('diagnosticls-configs.formatters.prettier'),
  },
  ['vim'] = { linter = require('diagnosticls-configs.linters.vint') },
}
