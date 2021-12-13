if has('nvim') && has('nvim-0.5') && !has('nvim-0.6')
  function! s:has_issues() abort
    let l:efmls_issues = luaeval('_G.efmls_healthcheck')
    return !empty(l:efmls_issues)
  endfunction

  function! health#efmls_configs#check() abort
    if s:has_issues()
      let l:efmls_issues = luaeval('_G.efmls_healthcheck')
      for l:issue in l:efmls_issues
        call health#report_error(issue)
      endfor
    else
      call health#report_ok('All checks passed')
    endif
  endfunction
endif
