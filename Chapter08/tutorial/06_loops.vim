let animals = ['cat', 'dog', 'parrot']

for animal in animals
  echo animal
endfor

for animal in keys(animal_names)
  echo 'This ' . animal . '''s name is ' . animal_names[animal]
endfor

for [animal, name] in items(animal_names)
  echo 'This ' . animal . '''s name is ' . name
endfor

let animals = ['dog', 'cat', 'parrot']
for animal in animals
  if animal == 'cat'
    echo 'It''s a cat! Breaking!'
    break
  endif
  echo 'Looking at a ' . animal . ', it''s not a cat yet...'
endfor

let animals = ['dog', 'cat', 'parrot']
for animal in animals
  if animal == 'cat'
    echo 'Ignoring the cat...'
    continue
  endif
  echo 'Looking at a ' . animal
endfor

let animals = ['dog', 'cat', 'parrot']
while !empty(animals)
  echo remove(animals, 0)
endwhil

let animals = ['cat', 'dog', 'parrot']
while len(animals) > 0
  let animal = remove(animals, 0)
  if animal == 'dog'
    echo 'Encountered a dog, breaking!'
    break
  endif
  echo 'Looking at a ' . animal
endwhile
