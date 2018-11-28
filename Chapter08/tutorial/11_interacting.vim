echo animal . ' says hello'

execute 'echo ' . animal . ' says hello'

execute "normal /cat<cr>dw"

silent echo animal . ' says hello'
silent execute 'echo ' . animal . ' says hello'

silent !echo 'this is running in a shell'

if has('python3')
  echom 'Your Vim was compiled with Python 3 support!'
endif
