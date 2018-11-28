function! AnimalGreeting(animal)
  echo a:animal . ' says hello!'
endfunction

call AnimalGreeting('cat')

function! AnimalGreeting(animal)
  return a:animal . ' says hello!'
endfunction

echo AnimalGreeting('dog')

function! AnimalGreeting(...)
  echo a:1 . ' says hi to ' . a:2
endfunction

call AnimalGreeting('cat', 'dog')

function! ListArgs(...)
  echo a:000
endfunction

call ListArgs('cat', 'dog', 'parrot')

function! AnimalGreeting(animal, ...)
  echo a:animal . ' says hi to ' . a:1
endfunction

call AnimalGreeting('cat', 'dog')

function s:AnimalGreeting(animal)
  echo a:animal . 'says hi!'
endfunction

call s:AnimalGreeting('cat')
