let animals = ['cat', 'dog', 'parrot']

let cat = animals[0]      " get first element
let dog = animals[1]      " get second element
let parrot = animals[-1]  " get last element
echo cat
echo dog
echo parrot

let slice = animals[1:]
echo slice

let slice = animals[0:1]
echo slice

call add(animals, 'octopus')
echo animals

call insert(animals, 'bobcat')
echo animals

call insert(animals, 'raven', 2)
echo animals

unlet animals[2]
echo animals

call remove(animals, -1)
echo animals

call remove(animals, 0, 1)
echo animals

let mammals = ['dog', 'cat']
let birds = ['raven', 'parrot']

let animals = mammals + birds
echo animals

call extend(mammals, birds)
echo animals

call sort(animals)
echo animals

let i = index(animals, 'parrot')
echo i

let animals = []
if empty(animals)
  echo 'There aren''t any animals!'
endif

let animals = ['cat', 'dog', 'parrot']
echo 'There are ' . len(animals) . ' animals.'

let animals = ['cat', 'cat', 'dog']
echo 'There are ' . count(animals, 'cat') . ' cats here.'
