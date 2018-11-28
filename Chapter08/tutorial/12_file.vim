echom 'Current file extension is ' . expand('%:e')

if filereadable(expand('%'))
  echom 'Current file (' . expand('%:t') . ') is readable!'
endif

execute 'edit animals.py'
