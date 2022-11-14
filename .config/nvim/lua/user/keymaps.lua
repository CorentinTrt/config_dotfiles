local keymap = vim.keymap

-- [ Move lines ]
keymap.set('n', '<C-j>', ':m .+1<CR>')
keymap.set('n', '<C-k>', ':m .-2<CR>')
keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- [ Don't yank when x ]
keymap.set('n', 'x', '"_x')

-- [ Increment / Decrement ]
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- [ Delete words backward ]
keymap.set('n', 'dw', 'vb"_d')
keymap.set('i', '<A-BS>', '<C-w>')

-- [ Inverse block jump ]
keymap.set('n', '{', '}')
keymap.set('n', '}', '{')

-- [ Tabs ]
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- [ Windows ]
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sk', '<C-w>k')
keymap.set('n', '<Space>', '<C-w>l')
keymap.set('', 'sj', '<C-w>j')
keymap.set('n', '<S-Space>', '<C-w>h')

keymap.set('n', 's<left>', '<C-w><')
keymap.set('n', 's<right>', '<C-w>>')

-- [ Common keys ]
keymap.set('n', ';p', ':Prettier<CR>')
keymap.set('n', ';l', ';p :w')
keymap.set('n', ';nn', ':noh<CR>')

