let animal_names = {
  \ 'cat': 'Miss Cattington',
  \ 'dog': 'Mr Dogson',
  \ 'parrot': 'Polly'
  \ }

let cat_name = animal_names['cat']
echo cat_name

let cat_name = animal_names.cat
echo cat_name

let animal_names['raven'] = 'Raven R. Raventon'
echo animal_names

unlet animal_names['raven']
echo animal_names

call extend(animal_names, {'bobcat': 'Sir Meowtington'})
echo animal_names

if !empty(animal_names)
  echo 'We have names for ' . len(animal_names) . ' animals'
endif

if has_key(animal_names, 'cat')
  echo 'Cat''s name is ' . animal_names['cat']
endif
