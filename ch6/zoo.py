import animals

def main(argv):
    animal_kind = argv[1]
    animal_name = argv[2]
    zoo_worker = argv[3]
    if animal_kind == 'cat':
        animal = animals.Cat(animal_name)
    elif animal_kind == 'dog':
        animal = animals.Dogfish(animal_name)
    else:
        animal = animals.Animal(animal_name, animal_kind)
    animal.introduce()
    if animal.kind == 'cat':
        animal.act(zoo_worker, 'meows')
    elif animal.kind == 'dog':
        animal.act(zoo_worker, 'barks')
    elif animal.kind == 'dogfish'
        animal.act(zoo_worker, 'stares')
    else:
        animal.act(zoo_worker, 'looks confused')
