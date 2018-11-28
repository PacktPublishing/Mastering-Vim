let g:animal_name = 'Miss Cattington'
let g:animal_kind = 'cat'

if g:animal_kind == 'cat'
  echo g:animal_name . ' is a cat'
elseif g:animal_kind == 'dog'
  echo g:animal_name . ' is a dog'
else
  echo g:animal_name . ' is something else'
endif

let g:is_cat = 1
echo g:animal_name . (g:is_cat ? ' is a cat' : ' is something else')

let g:is_cat = 0
let g:is_dog = 0
if !(g:is_cat || g:is_dog)
  echo g:animal_name . ' is something else'
endif

echo 'cat' ==? 'CAT'
echo 'cat' ==# 'CAT'
set ignorecase | echo 'cat' == 'CAT'
echo 'cat' =~ 'c.\+'
echo 'cat' =~# 'C.\+'
echo 'cat' !~ '.at'
echo 'cat' !~? 'C.\+'
