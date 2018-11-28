let animal_names = {
  \ 'cat': 'Miss Cattington',
  \ 'dog': 'Mr Dogson',
  \ 'parrot': 'Polly'
  \ }

function! animal_names.GetGreeting(animal)
  return self[a:animal] . ' says hello'
endfunction

echo animal_names.GetGreeting('cat')

let animals = {
  \ 'animal_names' : {
    \ 'cat': 'Miss Cattington',
    \ 'dog': 'Mr Dogson',
    \ 'parrot': 'Polly'
    \ }
  \ }

function GetGreeting(animal) dict
  return self.animal_names[a:animal] . ' says hello'
endfunction

let animals['GetGreeting'] = function('GetGreeting')

echo animals.GetGreeting('dog')
