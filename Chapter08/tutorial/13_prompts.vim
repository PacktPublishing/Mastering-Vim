let answer = confirm('Is cat your favorite animal?', "&yes\n&no")
echo answer

let answer = confirm(
  \ 'Is cat your favorite animal?', "absolutely &yes\nhell &no")

let animal = input('What is your favorite animal? ')
echo "\n"
echo 'What a coincidence! My favorite animal is a ' . animal . ' too!'

function! AskAnimalName()
  call inputsave()
  let name = input('What is the animal''s name? ')
  call inputrestore()
  return name
endfunction

nnoremap <leader>a = :let name = AskAnimalName()<cr>:echo name<cr>
