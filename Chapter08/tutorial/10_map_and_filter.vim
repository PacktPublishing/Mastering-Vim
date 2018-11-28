function! IsProperName(name)
  if a:name =~? '\(Mr\|Miss\) .\+'
    return 1
  endif
  return 0
endfunction

let animal_names = {
  \ 'cat': 'Miss Cattington',
  \ 'dog': 'Mr Dogson',
  \ 'parrot': 'Polly'
  \ }

call filter(animal_names, 'IsProperName(v:val)')

echo animal_names

let IsProperName2 = function('IsProperName')

echo IsProperName2('Mr Dogson')

function! FunctionCaller(func, arg)
  return a:func(a:arg)
endfunction

echo FunctionCaller(IsProperName2, 'Miss Catington')

function! IsProperNameKeyValue(key, value)
  if a:value =~? '\(Mr\|Miss\) .\+'
    return 1
  endif
  return 0
endfunction

call filter(animal_names, function('IsProperNameKeyValue'))

echo animal_names

let animal_names = ['Miss Cattington', 'Mr Dogson', 'Polly', 'Meowtington']

call map(animal_names,
  \ {key, val -> IsProperName(val) ? val : 'Miss ' .  val})

echo animal_names

function! MakeProperName(name)
  if IsProperName(a:name)
    return a:name
  endif
  return 'Miss ' . a:name
endfunction
call map(animal_names, 'MakeProperName(v:val)')
